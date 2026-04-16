# ============================================================
# EXPANDED REDUCER RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer responsibility after feature expansion.

reducer_rules:
- reducers own UI state transition
- reducers must not own persistence
- reducers must not own ERP handoff execution
- reducers may own selection, mode, and comparison state

expanded_reducer_scope:

ForecastEditorReducer:
- forecast edit state
- assumption edit state
- market event input state

ActionBoardReducer:
- action selection state
- action comparison state

ProposalBuilderReducer:
- scenario switch state
- proposal variant selection state
- template selection state
- content recommendation apply state
- internal explanation draft edit state
- basis panel visibility state

ProfitPreviewReducer:
- explainability panel state
- uncertainty panel state
- risk explanation visibility state

ForecastDetailReducer:
- detail section expansion state
- tracking summary display state
- readiness section state

ProApprovalSubmissionReducer:
- submission validation state
- approval request state
- governed transition confirmation state
