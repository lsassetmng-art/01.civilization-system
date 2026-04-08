# ============================================================
# LICENSE AND BOUNDARY
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona license and boundary control.

# 2. CORE ENTITIES

- persona_license
- boundary_rule
- access_grant
- transfer_rule

# 3. STATE MODEL

persona_license:
- license_id
- persona_id
- license_type_code
- valid_from
- valid_to

boundary_rule:
- boundary_rule_id
- persona_id
- boundary_scope
- rule_type_code
- rule_status

access_grant:
- grant_id
- persona_id
- grantee_scope
- grant_type_code
- grant_status

transfer_rule:
- transfer_rule_id
- persona_id
- transfer_scope
- transfer_mode
- rule_status

# 4. INTEGRITY RULES

- license validity window must be explicit
- access grant must preserve grantee scope
- transfer rule must be explicit before transfer
- boundary crossing without rule is prohibited

