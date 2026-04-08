# ============================================================
# ESTIMATE PREMIUM FEATURE GATE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium gate runtime evaluates whether feature execution is allowed.

Premium-gated operations include:

- structured meeting memo creation/editing
- QA creation/editing
- template registration/editing
- expanded default template access

Runtime outcome must be one of:

- allowed
- denied_inactive_plan
- denied_unknown_plan_state
- denied_refresh_required

Unknown plan state must fail closed for premium-only writes.

