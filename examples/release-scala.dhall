let GithubActions =
      ../package.dhall
        sha256:ec404aa0b9aee8cf410cb588a46f71257e292c93b61bcc00d4f4dc85f92974bd

let setup =
      [ GithubActions.steps.actions/checkout
      , GithubActions.steps.olafurpg/setup-java { java-version = "11" }
      , GithubActions.steps.olafurpg/setup-gpg
      , GithubActions.steps.olafurpg/sbt-ci-release
      ]

in  GithubActions.Workflow::{
    , name = "Release"
    , on = GithubActions.On::{
      , push = Some GithubActions.Push::{
        , branches = Some [ "master" ]
        , tags = Some [ "*" ]
        }
      }
    , jobs = toMap
        { build = GithubActions.Job::{
          , name = Some "Publish"
          , environment = Some GithubActions.JobEnv::{
            , name = "production"
            , url = Some "https://github.com"
            }
          , permissions = Some
            [ { mapKey = GithubActions.types.Permission.id-token
              , mapValue = GithubActions.types.PermissionAccess.read
              }
            ]
          , runs-on = GithubActions.types.RunsOn.`ubuntu-18.04`
          , steps = setup
          }
        }
    }
