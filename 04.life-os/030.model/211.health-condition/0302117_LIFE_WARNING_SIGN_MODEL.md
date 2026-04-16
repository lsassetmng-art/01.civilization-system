# ============================================================
# LIFE WARNING SIGN MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines warning-sign records in LifeOS.

entity_name:
life_warning_sign

meaning:
Represents a bounded warning-sign interpretation attached to recorded condition facts.

core_fields:
- warning_sign_id
- user_id
- source_record_type
- source_record_id
- sign_type
- sign_label
- detected_at
- reason_note
- escalation_candidate
- created_at
