# ============================================================
# PROVENANCE
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for provenance structures.

# 2. CORE ENTITIES

- provenance_record
- provenance_actor_reference
- provenance_rule
- provenance_status

# 3. STATE MODEL

provenance_record:
- provenance_record_id
- meta_definition_id
- provenance_scope
- provenance_type_code
- provenance_status

provenance_actor_reference:
- provenance_actor_reference_id
- provenance_record_id
- actor_scope
- actor_code
- actor_status

provenance_rule:
- provenance_rule_id
- provenance_record_id
- rule_type_code
- rule_value
- rule_status

provenance_status:
- provenance_status_id
- provenance_record_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- actor reference and rule must belong to one provenance record
- provenance scope must be explicit
- active and blocked state must be explicit
- hidden provenance mutation is prohibited

