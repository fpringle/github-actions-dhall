{ Job =
    ./types/Job.dhall
      sha256:14ef79955668428043d05c963c84852e9d3494f0a2f5ac6e2b959c33a37fa696
, JobEnv =
    ./types/JobEnv.dhall
      sha256:521e86d74ae30cec88804eb9fa8014510297c9cf6b4b412d1576df31ed72dc6f
, Defaults =
    ./types/Defaults.dhall
      sha256:a2963761aaa06bae9abd5575667afbba6539d8ce694a4a82900bf4f9df2e7932
, Strategy =
    ./types/Strategy.dhall
      sha256:b4efad74829583ccb185ffe231b520432b78208b3a461765936c5a45d06edd09
, On =
    ./types/On.dhall
      sha256:e2cdce2388c2e775f3563e3284177fbe9f34c50061395c3184f6b085eb668050
, Step =
    ./types/Step.dhall
      sha256:023b2ada098f772e3392989b9345f37ce3ddeaf5640ff330b47644216c17aae0
, RunsOn =
    ./types/RunsOn.dhall
      sha256:9efc5b4e1cc4ce2f06aa59c77ae4f9fb47287d79b65c8469dbfa375af9eb21e8
, Env =
    ./types/Env.dhall
      sha256:e73a2ec07449acffe1a4ba9cd261b845a8beb8f81fbc1415575639e99da668e6
, Service =
    ./types/Service.dhall
      sha256:c957b80c6a0d53dce7bf05921c1983797b5d52958ded76244cd94ae80deb94e5
, Workflow =
    ./types/Workflow.dhall
      sha256:aba532d29a8cb05ee1353f0d110544d41af435aba3c51a3d11004ab5ae0fe7ca
, Push =
    ./types/events/Push.dhall
      sha256:5147b1dd6eca94aae5d217b979cac20ba64b7ec160488dd917f171cae451b135
, PullRequest =
    ./types/events/PullRequest.dhall
      sha256:6b42c650c5a849dc6445287b85f6a55618f5e135be6cb8ef847a9c46d6c6672c
, PullRequestReview =
    ./types/events/PullRequestReview.dhall
      sha256:f7a1d37a7fa9ce33f736813d132503dcf9c46a3fc72c7327c07d799af9f6ea63
, PullRequestTarget =
    ./types/events/PullRequestTarget.dhall
      sha256:20591763afd7bd762652e3bd5c856fc76b5f21c207e89bde486910e6ecada115
, PullRequestTarget/types =
    ./types/events/pull_request_target/types.dhall
      sha256:d5c8dc5f02a449316dc2a8ac0e1b145b545ba73c900bfc2bc97f097929af3f1c
, Delete =
    ./types/events/Delete.dhall
      sha256:0912602a19e01dcff30f351958d2d9b69519c9be61b57b1b32a2a569bf8bf5f9
, Concurrency =
    ./types/Concurrency.dhall
      sha256:76a98598b0b13d496c062d301b27c82059be340aae993285c6b345ec494a4913
, Container =
    ./types/Container.dhall
      sha256:6d48c2461a004fb32d7b04f8716621a6f556fccb4ae66b4df20ff4de9b753e09
, Permission =
    ./types/Permission.dhall
      sha256:b2a2f093af7412e34040a806e226ee4e7d691bd18df5c46bbfcc7cd222a37a2d
, PermissionAccess =
    ./types/PermissionAccess.dhall
      sha256:50f036b7dc434a4b2e7e847943fe5c31846bf38ec1795de8baafe76cfe6382b6
, Schedule =
    ./types/events/Schedule.dhall
      sha256:eb91edc996fadffb9cac1b67a4da220eed6bf54e96f7b8accbb613462e402537
, Input =
    ./types/Input.dhall
      sha256:47ac7011efdb1abbbf1ea149ff1dd4d725079432ef421f101c50577ebadb58d3
, Output =
    ./types/Output.dhall
      sha256:4c7baccef8bd151904013c18b9cb539944019e8d85c2cb53c89d01988cde052c
, Secret =
    ./types/Secret.dhall
      sha256:8db70cb6694b1748740dd506ebb8e35af3baa01cf3e1b7883dbac2637703c081
, RepositoryDispatch =
    ./types/events/RepositoryDispatch.dhall
      sha256:f7a1d37a7fa9ce33f736813d132503dcf9c46a3fc72c7327c07d799af9f6ea63
, WorkflowCall =
    ./types/events/WorkflowCall.dhall
      sha256:1a67d9a0484fe2b3dc2de095f02e82fba2e850372cc84d727b5da153ec3c775b
, WorkflowDispatch =
    ./types/events/WorkflowDispatch.dhall
      sha256:b21d7413528a5f212e8dae77baf683aeb513d1cbe3df211f8bc1efb3f80dc9a9
, WorkflowRun =
    ./types/events/WorkflowRun.dhall
      sha256:63a3c3130a74d1af7e25a73b55ab719cda4a26ba0bfdee72214be7e43d23c46a
, Release =
    ./types/events/Release.dhall
      sha256:6dc17afaa0a74325dfd226bdc60d96e737978c8be500856b84d7075e869cad87
, Release/types =
    ./types/events/release/types.dhall
      sha256:7a43a2198599fb074e451d67c6afcdecf65205ffe909e1e702eb2f567d5f3889
, actions/HaskellSetup =
    ./types/actions/HaskellSetup.dhall
      sha256:3cfef5c383d40623d0766715715c881583623bf6e11a0ad0b9946d8eaeffa6c5
, MergeGroup =
    ./types/events/MergeGroup.dhall
      sha256:6932501dad0293756c78e48f64ae6b5549d373f7a178c26e300b69341de81fd6
, MergeGroup/types =
    ./types/events/merge_group/types.dhall
      sha256:395eaa0f656449d1bca8c63e6631a999c47deab93659ad1a2b4999d415f8d0ac
, ContinueOnError =
    ./types/ContinueOnError.dhall
      sha256:83ad8f8eea100277b6658ac27c590d6ee43df14e4d1fc49a55c691e1033fd3e9
, OrGHExpression =
    ./types/OrGHExpression.dhall
      sha256:80d217d939ff8f6113cd44fcc1210cf9aec18334c9e09091be0fe0f302686a2f
}
