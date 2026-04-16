# ============================================================
# LIFE SUPPORT TIMING MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines support timing preferences in LifeOS.

entity_name:
life_support_timing

meaning:
Represents timing preferences or learned timing suitability for support prompts.

core_fields:
- support_timing_id
- user_id
- timing_label
- preferred_window
- burden_level
- created_at
- updated_at
