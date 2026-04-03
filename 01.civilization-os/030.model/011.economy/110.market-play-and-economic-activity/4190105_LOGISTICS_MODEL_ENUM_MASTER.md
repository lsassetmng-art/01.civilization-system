# ============================================================
# LOGISTICS MODEL ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: company-builder-enum-master-phase2
component: logistics-model-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

logistics_model_enum:
- self_managed_logistics
- contracted_logistics
- port_centered_logistics
- rail_centered_logistics
- road_centered_logistics
- multimodal_logistics
- state_supported_logistics


# ============================================================
# 2. FINAL RULE
# ============================================================

Logistics model
defines how goods physically move
for the enterprise.
