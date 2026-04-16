# ============================================================
# LIFE CORRELATION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: life-analytics
owner: Boss
prepared_by: Zero

purpose:
Defines possible correlations in LifeOS.

entity_name:
life_correlation

meaning:
Represents a possible relationship between two life domains or measures.

core_fields:
- correlation_id
- user_id
- left_factor
- right_factor
- relation_label
- confidence_type
- explanation_note
- created_at
