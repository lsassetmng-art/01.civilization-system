# ============================================================
# GAME BUILDER TEMPLATE APPLICATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder template application model.

model_type:
- template application truth model

primary_key:
- game_builder_template_application_id

natural_key:
- application_scope
- application_ref
- correlation_id

fields:
- game_builder_template_application_id
- application_scope
- application_ref
- correlation_id
- application_status
- project_code
- template_profile_code
- application_summary
- applied_at
- created_at
- updated_at

application_status_enum:
- pending
- applied
- failed
- reversed
- archived

idempotency_rule:
application_scope + application_ref must suppress duplicate effective template application.

truth_boundary:
Builder template application truth belongs to GameOS builder-webapp domain.
