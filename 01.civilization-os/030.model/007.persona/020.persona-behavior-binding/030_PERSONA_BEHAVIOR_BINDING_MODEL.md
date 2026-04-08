# ============================================================
# PERSONA BEHAVIOR BINDING
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona behavior binding.

# 2. CORE ENTITIES

- behavior_profile
- behavior_binding
- behavior_context
- behavior_rule

# 3. STATE MODEL

behavior_profile:
- profile_id
- persona_id
- behavior_family_code
- profile_status
- version_code

behavior_binding:
- binding_id
- persona_id
- target_context
- binding_mode
- binding_status

behavior_context:
- context_id
- context_type_code
- source_scope
- context_status

behavior_rule:
- rule_id
- profile_id
- trigger_code
- response_code
- rule_status

# 4. INTEGRITY RULES

- one active behavior profile per behavior family
- binding must reference one explicit context
- behavior rule must belong to one profile
- conflicting active bindings are prohibited

