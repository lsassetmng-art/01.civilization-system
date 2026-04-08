# ============================================================
# LEGAL ROLE BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for legal role bindings.

# 2. CORE ENTITIES

- legal_role_definition
- legal_role_binding
- legal_role_scope
- legal_role_status

# 3. STATE MODEL

legal_role_definition:
- legal_role_definition_id
- role_code
- role_type_code
- jurisdiction_scope
- role_status

legal_role_binding:
- legal_role_binding_id
- legal_role_definition_id
- subject_scope
- binding_reason
- binding_status

legal_role_scope:
- legal_role_scope_id
- legal_role_definition_id
- scope_type_code
- scope_ref
- scope_status

legal_role_status:
- legal_role_status_id
- legal_role_binding_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- binding must belong to one legal role definition
- subject and jurisdiction scope must be explicit
- active and suspended states must be explicit
- hidden legal-role mutation is prohibited

