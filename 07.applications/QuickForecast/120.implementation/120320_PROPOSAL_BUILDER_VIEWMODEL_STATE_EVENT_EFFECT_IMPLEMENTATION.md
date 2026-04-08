# ============================================================
# PROPOSAL BUILDER VIEWMODEL STATE EVENT EFFECT IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel state / event / effect for proposal builder screen.

state_segments:
- loading_state
- source_context_state
- draft_type_state
- proposal_section_state
- regeneration_state
- validation_state
- save_state
- pro_action_state
- message_state

events:
- Initialize
- SelectDraftType
- GenerateDraft
- RegenerateSection
- EditSectionText
- SaveDraft
- TapContinueToProfit
- TapSharePro
- TapRequestApprovalPro
- TapBackToAction

effects:
- NavigateToProfitPreview
- NavigateToProApproval
- NavigateBack
- ShowMessage
- ShowValidation

rules:
- regenerated section must not silently erase authored text
- Basic and Pro action set must be clearly separated
