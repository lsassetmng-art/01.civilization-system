# ============================================================
# REPOSITORY METHOD IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines repository responsibilities and recommended method families.

forecast_repository_methods:
- createDraft
- loadDraft
- saveDraft
- updateTargetScope
- updateForecastSummary
- listRecentDrafts
- listMyDrafts
- duplicateScenarioContext

scenario_repository_methods:
- listScenarios
- selectScenario
- createScenario
- updateScenario
- deleteScenario

action_repository_methods:
- listActionIdeas
- generateActionCandidates
- saveActionSelection
- addCustomAction
- updateAction

proposal_repository_methods:
- loadProposalDraft
- generateProposalDraft
- regenerateProposalSection
- saveProposalDraft
- listProposalDraftsByForecast

profit_repository_methods:
- loadProfitPreview
- calculateProfitPreview
- saveProfitPreview
- saveProfitAssumptions

history_repository_methods:
- listHistory
- appendLocalHistoryEvent

share_repository_methods:
- listShareTargets
- addShareTarget
- removeShareTarget

approval_repository_methods:
- loadApprovalState
- requestApproval
- cancelApproval
- refreshApprovalState

handoff_repository_methods:
- loadHandoffState
- prepareHandoff
- executeHandoff
- retryHandoff
- refreshHandoffState

settings_repository_methods:
- loadSettings
- saveSettings
- loadTierInfo

principles:
- repositories expose domain-meaningful methods
- repositories may coordinate multiple DAO calls
- governed remote actions must remain explicit repository commands
