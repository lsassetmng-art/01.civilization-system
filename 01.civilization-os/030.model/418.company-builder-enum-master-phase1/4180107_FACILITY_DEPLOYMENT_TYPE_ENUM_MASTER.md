# ============================================================
# FACILITY DEPLOYMENT TYPE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: company-builder-enum-master-phase1
component: facility-deployment-type-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

facility_deployment_type_enum:
- single_site
- hub_and_branch
- distributed_storefront
- factory_network
- logistics_network
- office_network
- mixed_network
- platform_without_physical_sites


# ============================================================
# 2. FINAL RULE
# ============================================================

Facility deployment type
defines the enterprise's expected physical rollout pattern.
