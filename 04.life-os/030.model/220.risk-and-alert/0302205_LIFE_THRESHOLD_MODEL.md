# ============================================================
# LIFE THRESHOLD MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines threshold references in LifeOS.

entity_name:
life_threshold

meaning:
Represents threshold definitions used for bounded alert logic.

core_fields:
- threshold_id
- threshold_type
- threshold_label
- threshold_value_text
- created_at
- updated_at
