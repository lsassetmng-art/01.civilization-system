# ============================================================
# LINEAGE
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for lineage structures.

# 2. CORE ENTITIES

- lineage_record
- lineage_source_reference
- lineage_rule
- lineage_status

# 3. STATE MODEL

lineage_record:
- lineage_record_id
- meta_definition_id
- lineage_scope
- lineage_type_code
- lineage_status

lineage_source_reference:
- lineage_source_reference_id
- lineage_record_id
- source_scope
- source_code
- source_status

lineage_rule:
- lineage_rule_id
- lineage_record_id
- rule_type_code
- rule_value
- rule_status

lineage_status:
- lineage_status_id
- lineage_record_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- source reference and rule must belong to one lineage record
- lineage scope must be explicit
- active and blocked state must be explicit
- hidden lineage mutation is prohibited

