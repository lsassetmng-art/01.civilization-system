# ============================================================
# NATION BUILDER
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for nation builder structures.

# 2. CORE ENTITIES

- nation_definition
- nation_builder_session
- nation_policy_bundle
- nation_builder_validation

# 3. STATE MODEL

nation_definition:
- nation_id
- nation_code
- nation_name
- nation_status
- created_at

nation_builder_session:
- builder_session_id
- nation_id
- builder_scope
- session_status
- started_at

nation_policy_bundle:
- policy_bundle_id
- nation_id
- bundle_type_code
- bundle_version
- bundle_status

nation_builder_validation:
- validation_id
- builder_session_id
- validation_code
- validation_result
- validated_at

# 4. INTEGRITY RULES

- builder session must bind one nation
- policy bundle must preserve nation identity
- validation must reference one session
- nation publication without validation is prohibited

