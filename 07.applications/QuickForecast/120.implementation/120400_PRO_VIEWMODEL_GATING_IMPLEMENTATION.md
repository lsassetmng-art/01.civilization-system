# ============================================================
# PRO VIEWMODEL GATING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines ViewModel-layer gating direction for Pro-only flows.

pro_viewmodels:
- ProApprovalSubmissionViewModel
- ShareTargetViewModel

rules:
- ViewModel initialization must validate Pro availability
- unsupported tier access must produce safe failure behavior
- gated flow must not expose stale prior Pro state after downgrade
