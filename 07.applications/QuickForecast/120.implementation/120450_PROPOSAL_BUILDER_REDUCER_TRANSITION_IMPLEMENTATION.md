# ============================================================
# PROPOSAL BUILDER REDUCER TRANSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines reducer-style transition examples for ProposalBuilderViewModel.

transition_examples:

Initialize:
- loading_state -> loading
- source_context_state loaded
- proposal_section_state loaded
- loading_state -> content

SelectDraftType:
- draft_type_state updated
- validation_state recalculated
- save_state -> dirty

GenerateDraft:
- regeneration_state -> generating
- repository generateProposalDraft called
- on success:
  - proposal_section_state updated
  - regeneration_state -> idle
  - save_state -> dirty_or_saved_by_policy
- on failure:
  - regeneration_state -> failed
  - message_state updated

RegenerateSection:
- regeneration_state -> generating_section
- only target section refreshed
- authored text protection rule applied

EditSectionText:
- proposal_section_state updated
- save_state -> dirty

SaveDraft:
- save_state -> saving
- repository saveProposalDraft called
- success/failure reflected

TapContinueToProfit:
- effect -> NavigateToProfitPreview

TapSharePro / TapRequestApprovalPro:
- Pro gate checked
- if allowed:
  - effect -> NavigateToProApproval
- else:
  - message/effect -> ShowValidation or ShowMessage

notes:
Generated content must become normal editable state after generation.
