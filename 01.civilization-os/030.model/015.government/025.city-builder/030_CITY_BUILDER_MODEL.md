# ============================================================
# CITY BUILDER
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for city builder structures.

# 2. CORE ENTITIES

- city_definition
- city_builder_session
- zoning_bundle
- city_builder_validation

# 3. STATE MODEL

city_definition:
- city_id
- city_code
- city_name
- nation_scope
- city_status

city_builder_session:
- builder_session_id
- city_id
- builder_scope
- session_status
- started_at

zoning_bundle:
- zoning_bundle_id
- city_id
- zoning_version
- zoning_scope
- zoning_status

city_builder_validation:
- validation_id
- builder_session_id
- validation_code
- validation_result
- validated_at

# 4. INTEGRITY RULES

- builder session must bind one city
- zoning bundle must preserve city identity
- validation must reference one session
- city publication without validation is prohibited

