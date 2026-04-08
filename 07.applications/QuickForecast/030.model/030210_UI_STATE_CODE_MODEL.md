# ============================================================
# UI STATE CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: ui_state_code
owner: Boss
prepared_by: Zero

purpose:
Defines stable UI state code families.

ui_state_groups:
- draft_state
- sync_state
- approval_state
- submission_state
- proposal_state
- profit_preview_state

requirements:
- state must be explicit
- state must be displayable in compact mobile UI
- state must not rely on color alone
