# ============================================================
# CORE SCREEN REPOSITORY RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository call responsibility by core screen event.

dashboard:
- Initialize -> ForecastRepository.listRecentDrafts
- Initialize(Pro) -> ApprovalRepository.loadApprovalState summary / HandoffRepository.loadHandoffState summary

forecast_list:
- Initialize -> ForecastRepository.listMyDrafts
- SelectTab(shared) -> ShareRepository.listShareTargets or mapped list source
- SelectTab(approval) -> ApprovalRepository.loadApprovalState list view
- SelectTab(handoff) -> HandoffRepository.loadHandoffState list view

forecast_editor:
- Initialize -> ForecastRepository.loadDraft, ScenarioRepository.listScenarios
- SaveDraft -> ForecastRepository.saveDraft
- DuplicateScenario -> ForecastRepository.duplicateScenarioContext or ScenarioRepository.createScenario
- RefreshProReference -> Pro reference gateway via ForecastRepository or dedicated ERP reference path

action_board:
- Initialize -> ActionRepository.listActionIdeas
- Generate candidates -> ActionRepository.generateActionCandidates
- SaveSelection -> ActionRepository.saveActionSelection

proposal_builder:
- Initialize -> ProposalRepository.loadProposalDraft
- GenerateDraft -> ProposalRepository.generateProposalDraft
- RegenerateSection -> ProposalRepository.regenerateProposalSection
- SaveDraft -> ProposalRepository.saveProposalDraft

profit_preview:
- Initialize -> ProfitRepository.loadProfitPreview
- Recalculate -> ProfitRepository.calculateProfitPreview
- SaveSnapshot -> ProfitRepository.saveProfitPreview and saveProfitAssumptions

principles:
- each event should have a primary repository owner
- repository ownership should remain understandable
