# ============================================================
# COMPANY BUILDER
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for company builder structures.

# 2. CORE ENTITIES

- company_definition
- company_builder_session
- company_ownership_state
- company_builder_validation

# 3. STATE MODEL

company_definition:
- company_id
- company_code
- company_name
- company_type_code
- company_status

company_builder_session:
- builder_session_id
- company_id
- builder_scope
- session_status
- started_at

company_ownership_state:
- ownership_state_id
- company_id
- owner_scope
- ownership_ratio
- ownership_status

company_builder_validation:
- validation_id
- builder_session_id
- validation_code
- validation_result
- validated_at

# 4. INTEGRITY RULES

- builder session must bind one company
- ownership state must preserve owner scope
- validation must reference one session
- company publication without validation is prohibited

