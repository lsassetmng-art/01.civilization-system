# ============================================================
# CITY BUILDER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: government.city_builder
document_id: 1201525001

owner: Boss
prepared_by: Zero

core_records:
- city_builder_draft
- city_plan
- district_plan
- placement_intent
- city_validation_result

error_codes:
- CITY_BUILDER_INVALID
- CITY_PLAN_INCOMPLETE
- CITY_VALIDATION_FAILED
