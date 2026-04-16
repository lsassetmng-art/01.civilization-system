# ============================================================
# VM REDUCER REPOSITORY REFRESH NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes implementation responsibility refresh after feature expansion.

summary:
The feature expansion is absorbed mainly by:
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- ProApprovalSubmissionViewModel

design_intent:
Preserve the original app structure,
but deepen responsibility where the proposal-centered value grows most.
