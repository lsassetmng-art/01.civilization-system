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

## Exact City Builder Core Surface
## Exact City Builder Core Surface

City builder must explicitly separate:

- city draft
- city boundary
- district bundle
- zoning bundle
- public facility layout
- validation result
- approval state
- publish artifact
- activation link

## Exact City Activation Guard

City activation is allowed only when:

- parent nation is active
- city territory fits parent nation territory
- district and zoning compatibility passed
- required approval completed
- published artifact exists
