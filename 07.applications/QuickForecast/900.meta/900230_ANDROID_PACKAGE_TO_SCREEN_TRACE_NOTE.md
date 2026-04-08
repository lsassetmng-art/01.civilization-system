# ============================================================
# ANDROID PACKAGE TO SCREEN TRACE NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines trace between packages and main screens.

trace_map:
- feature.forecast -> dashboard, forecast_list, forecast_detail, forecast_editor
- feature.action -> action_idea_board
- feature.proposal -> proposal_draft_builder
- feature.profit -> profit_preview
- feature.pro -> pro_approval_submission, history, share target, sync status
- common -> state badge, validation message, shared selectors, timeline
