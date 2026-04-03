# ============================================================
# PUBLIC OFFICE TYPE CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: public-office-type-classification

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OFFICE CLASSES
# ============================================================

office_classes:
- civil_service_office
- political_office
- military_office
- judicial_office
- ceremonial_office
- support_execution_role


# ============================================================
# 2. HUMAN REQUIREMENT MAP
# ============================================================

human_requirement_map:
- civil_service_office -> human_only_office
- political_office -> office_specific_rule
- military_office -> office_specific_rule
- judicial_office -> human_only_office
- ceremonial_office -> office_specific_rule
- support_execution_role -> not_human_only_by_default


# ============================================================
# 3. FINAL RULE
# ============================================================

Office class
must be resolved before eligibility
and actor compatibility are decided.
