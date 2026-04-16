# ============================================================
# LIFE NAP MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: sleep-recovery
owner: Boss
prepared_by: Zero

purpose:
Defines nap records in LifeOS.

entity_name:
life_nap

meaning:
Represents a nap event for recovery support.

core_fields:
- nap_id
- user_id
- started_at
- ended_at
- felt_effect
- note
- created_at
