# ============================================================
# ANDROID NAVIGATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for Android navigation.

navigation_principles:
- navigation must preserve resumability
- deep nesting should be avoided
- detail and editor transitions must remain predictable
- source-to-output chain should be reachable without confusion

recommended_flow:
dashboard
-> forecast_list
-> forecast_detail
-> forecast_editor
-> action_idea_board
-> proposal_draft_builder
-> profit_preview

pro_extensions:
- pro_approval_submission
- history

notes:
Navigation should preserve the working object identity
across Forecast -> Action -> Proposal -> Profit transitions.
