# ============================================================
# SCREEN TRANSITION INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the primary screen transition structure of QuickForecast.

# ============================================================
# 1. PRIMARY FLOW
# ============================================================

primary_transition:
dashboard
-> forecast_list
-> forecast_editor
-> action_idea_board
-> proposal_draft_builder
-> profit_preview

pro_extended_transition:
profit_preview
-> pro_approval_submission
-> history

# ============================================================
# 2. ENTRY POINTS
# ============================================================

entry_points:
- dashboard recent draft
- dashboard pending work
- forecast list item
- shared item notification
- approval pending item
- handoff pending item

# ============================================================
# 3. CORE TRANSITIONS
# ============================================================

dashboard:
- to forecast_list
- to forecast_editor (new draft)
- to pending Pro work
- to settings

forecast_list:
- to forecast_detail
- to forecast_editor
- to shared target contexts
- to history

forecast_detail:
- to forecast_editor
- to action_idea_board
- to proposal_draft_builder
- to profit_preview
- to pro_approval_submission
- to history

forecast_editor:
- to action_idea_board
- to forecast_detail
- back to forecast_list

action_idea_board:
- to proposal_draft_builder
- back to forecast_editor
- to forecast_detail

proposal_draft_builder:
- to profit_preview
- to forecast_detail
- to pro_approval_submission (Pro)
- back to action_idea_board

profit_preview:
- to proposal_draft_builder
- to action_idea_board
- to forecast_detail
- to pro_approval_submission (Pro)

pro_approval_submission:
- to history
- to forecast_detail
- back to proposal_draft_builder
- back to profit_preview

history:
- to forecast_detail

settings:
- back to dashboard

# ============================================================
# 4. TRANSITION PRINCIPLES
# ============================================================

principles:
- resume is more important than deep nesting
- forecast context must remain recoverable
- source-to-output chain must remain navigable
- Pro-only transitions must remain gated
