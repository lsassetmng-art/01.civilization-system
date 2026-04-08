# ============================================================
# TAGGING
# MODEL
# ============================================================

status: draft
layer: model
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for tagging structures.

# 2. CORE ENTITIES

- tagging_record
- tag_item
- tag_rule
- tagging_status

# 3. STATE MODEL

tagging_record:
- tagging_record_id
- meta_definition_id
- tagging_scope
- tagging_type_code
- tagging_status

tag_item:
- tag_item_id
- tagging_record_id
- tag_code
- tag_value
- tag_status

tag_rule:
- tag_rule_id
- tagging_record_id
- rule_type_code
- rule_value
- rule_status

tagging_status:
- tagging_status_id
- tagging_record_id
- active_flag
- blocked_flag
- changed_at

# 4. INTEGRITY RULES

- tag item and tag rule must belong to one tagging record
- tagging scope must be explicit
- active and blocked state must be explicit
- hidden tagging mutation is prohibited

