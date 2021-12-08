module "payment" {
source = "https://github.com/MunishLagoo/terraform-mutable.git//app-module"
INSTANCE_TYPE= var.INSTANCE_TYPE
SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
OD_INSTANCE_COUNT = var.OD_INSTANCE_COUNT
COMPONENT = "payment"
PORT = 8080
IS_PRIVATE_LB = true
LB_RULE_PRIORITY = 103
APP_VERSION = var.APP_VERSION
NEXUS_USER = var.NEXUS_USER
NEXUS_PASS = var.NEXUS_PASS

}

output "INSTANCE_IDS" {
    value = module.cart.INSTANCE_IDS
}