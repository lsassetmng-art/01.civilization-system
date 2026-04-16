# ============================================================
# EXPANDED VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel responsibility after feature expansion.

viewmodel_responsibility:

ForecastEditorViewModel:
- forecast draft editing
- assumption editing
- market event input entry
- forecast basis preparation state

ActionBoardViewModel:
- action candidate comparison
- selected action fixation
- action reasoning summary

ProposalBuilderViewModel:
- proposal draft generation
- scenario switched proposal handling
- proposal template selection
- content recommendation application
- proposal basis panel state
- internal explanation draft state

ProfitPreviewViewModel:
- profit preview rendering
- explainable profit reasons
- uncertainty and risk explanation state

ForecastDetailViewModel:
- cross-object summary
- proposal basis summary
- internal response tracking summary
- readiness summary

ProApprovalSubmissionViewModel:
- governed submission
- approval request state
- handoff readiness state
- final governed transition state
