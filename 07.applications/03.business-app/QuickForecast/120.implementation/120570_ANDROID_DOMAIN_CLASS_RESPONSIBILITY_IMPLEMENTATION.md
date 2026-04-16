# ============================================================
# ANDROID DOMAIN CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines domain-layer class responsibilities.

domain.models:
- ForecastDraft
- ForecastSignal
- ForecastScenario
- ActionIdea
- ProposalDraft
- ProfitPreview
- ProfitAssumption
- ApprovalRequest
- ApprovalEvent
- ShareTarget
- ErpHandoff
- HistoryEntry

domain.usecase_candidates:
- CreateForecastDraftUseCase
- SaveForecastDraftUseCase
- DuplicateScenarioUseCase
- GenerateActionCandidatesUseCase
- SaveActionSelectionUseCase
- GenerateProposalDraftUseCase
- RegenerateProposalSectionUseCase
- CalculateProfitPreviewUseCase
- SaveProfitSnapshotUseCase
- RequestApprovalUseCase
- PrepareHandoffUseCase
- ExecuteHandoffUseCase
- RetryHandoffUseCase

principles:
- domain layer expresses business meaning
- use cases are optional but useful for complex screens
- Pro governance use cases remain explicit
