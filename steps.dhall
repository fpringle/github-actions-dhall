{ run =
    ./steps/run.dhall
      sha256:cbf1758e8e66a6555f53485a4879140d72688b761dfb302e571eca6624c798dc
, echo =
    ./steps/echo.dhall
      sha256:bcdcc662f84ca7eae3193a9feac5784dabd3d62be97106657297b20ac1cabaca
, actions/checkout =
    ./steps/actions/checkout.dhall
      sha256:1494d78a4b7dcbc8c86d2c540e3a26a28d39a2f9f965c6c814400ae6dbe3da6d
, actions/cache =
    ./steps/actions/cache.dhall
      sha256:f6ff0bbb043c86c913091288fa4c0966b50df7d62972fb5de17303797608479f
, actions/helloWorld =
    ./steps/actions/helloWorld.dhall
      sha256:077b4d8e7da454690c4b9bdd500c959f59b4c36c04c395b20483f80197e6af03
, actions/setup-haskell =
    ./steps/actions/setup-haskell.dhall
      sha256:c793c68c785fd26d97f85e229cff37a35a814c0fb56e39fc3501cce1788334d0
, actions/setup-java =
    ./steps/actions/setup-java.dhall
      sha256:503b83d3b8ba58410cec034b192d3391799077490e9b2982105899a1556e45a2
, cachix/cachix =
    ./steps/cachix/cachix.dhall
      sha256:c333e936d0d7c838e774f63504c6fa259dba02495d84da28a4989e071d15062c
, cachix/install-nix =
    ./steps/cachix/install-nix.dhall
      sha256:4dbcece474ef8759dfeb6e8974730ab6cba4ee13af06328f8bfc12c87f735085
, elastic/elasticsearch =
    ./steps/elastic/elasticsearch.dhall
      sha256:62478d20fa56ba7332282125f0907cffc48dfdd1d7ff9b68712ba6ea264b6870
, JamesIves/ghpages-deploy =
    ./steps/JamesIves/ghpages-deploy.dhall
      sha256:ab3e2b02aab0a1345c1e9d73b2911ca3fb254b3e4cc3245be872b38e2ed5b237
, olafurpg/sbt-ci-release =
    ./steps/olafurpg/sbt-ci-release.dhall
      sha256:d2da4e78ccef5db7a77061acb901ae40204682476e76bea801490ceaa75622db
, olafurpg/setup-java =
    ./steps/olafurpg/setup-java.dhall
      sha256:8c31b2255e13362e7c376c7ea3469a15d0ce79dc0df234ff10e52e177f94b31d
, olafurpg/setup-gpg =
    ./steps/olafurpg/setup-gpg.dhall
      sha256:13a64051bba29499b524685d16162be1a6799903d3f6bfd06edbf3cff1de5945
}
