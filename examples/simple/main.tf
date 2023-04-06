module "ctx" {
  source  = "git::https://github.com/chiwooiac/tfmodule-context.git"
  context = {
    region      = "ap-northeast-1"
    project     = "simple"
    environment = "Testbed"
    owner       = "admin@symplesims.io"
    team        = "DevOps"
    domain      = "sympleops.ga"
    pri_domain  = "sympleops.local"
  }
}

module "ecs" {
  source  = "../../"
  context = module.ctx.context
}
