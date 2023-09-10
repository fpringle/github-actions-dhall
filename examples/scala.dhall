let GithubActions =
      ../package.dhall
        sha256:e36535a647eb3997d0e9baba3a843f55f097fad4adc7bc9c1499efccfcb97f13

let ListTextOrGH = GithubActions.types.OrGHExpression (List Text)

let matrix =
      toMap
        { java = ListTextOrGH.Value [ "8.0.232", "11.0.5" ]
        , scala = ListTextOrGH.Value [ "2.11.12", "2.12.11" ]
        }

let setup =
      [ GithubActions.steps.actions/checkout
      , GithubActions.steps.actions/cache
          { path =
              ''
              ~/.sbt
              "~/.cache/coursier"
              ''
          , key = "sbt"
          , hashFiles =
            [ "build.sbt"
            , "project/plugins.sbt"
            , "project/build.properties"
            , "project/Dependencies.scala"
            ]
          }
      ]

in  GithubActions.Workflow::{
    , name = "Greeting"
    , on = GithubActions.On::{
      , push = Some GithubActions.Push::{=}
      , pull_request = Some GithubActions.PullRequest::{=}
      }
    , jobs = toMap
        { checks = GithubActions.Job::{
          , name = Some "Checks"
          , runs-on = GithubActions.types.RunsOn.ubuntu-latest
          , steps =
                setup
              # [ GithubActions.steps.actions/setup-java { java-version = "11" }
                , GithubActions.steps.run
                    { run = "sbt scalafmtCheckAll scalafmtSbtCheck" }
                ]
          }
        , build = GithubActions.Job::{
          , name = Some "Build"
          , needs = Some [ "checks" ]
          , strategy = Some GithubActions.Strategy::{ matrix }
          , runs-on = GithubActions.types.RunsOn.ubuntu-latest
          , steps =
                setup
              # [ GithubActions.steps.actions/setup-java
                    { java-version = "\${{ matrix.scala}}" }
                , GithubActions.steps.run
                    { run = "sbt \"++\${{ matrix.scala}} test\"" }
                ]
          }
        }
    }
