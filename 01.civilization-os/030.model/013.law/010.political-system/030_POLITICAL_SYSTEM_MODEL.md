# ============================================================
# POLITICAL SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for political system law structures.

# 2. CORE ENTITIES

- political_system_definition
- office_structure
- power_source_rule
- political_system_status

# 3. STATE MODEL

political_system_definition:
- political_system_definition_id
- system_type_code
- jurisdiction_scope
- system_version
- system_status

office_structure:
- office_structure_id
- political_system_definition_id
- office_code
- office_scope
- office_status

power_source_rule:
- power_source_rule_id
- political_system_definition_id
- source_type_code
- source_rule_code
- rule_status

political_system_status:
- political_system_status_id
- political_system_definition_id
- active_flag
- legitimacy_code
- changed_at

# 4. INTEGRITY RULES

- office structure must belong to one political system definition
- power source rule must be explicit
- jurisdiction scope must be explicit
- ambiguous active political system is prohibited

