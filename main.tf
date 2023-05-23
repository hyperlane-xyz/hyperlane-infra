module "validators" {
  source = "./modules/validator"

  validator_count = var.validator_count
  region          = var.region
  account_id      = var.account_id
  oidc_id         = var.oidc_id
}

module "relayers" {
  source = "./modules/relayers"

  chains     = var.chains
  region     = var.region
  account_id = var.account_id
  oidc_id    = var.oidc_id
}
