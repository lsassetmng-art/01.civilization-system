# ============================================================
# IMPLEMENTATION BOUNDARY HARDENING
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens implementation boundaries across layers and classes.

forbidden_boundary_violations:
- repository must not generate final UI wording
- formatter must not decide business meaning
- viewmodel must not rewrite canonical money meaning
- screen composables must not own canonical fallback rules
- adaptive layout code must not fork business flow
- locale and currency display helpers must not mutate canonical source data

required_boundaries:
- repository returns canonical data and requested variants separately
- formatter handles presentation formatting only
- resolver handles text-key resolution only
- viewmodel coordinates state and transitions only
- screen layer renders and emits intent only

important_rule:
Tablet expansion is presentation expansion,
not business-flow divergence.
