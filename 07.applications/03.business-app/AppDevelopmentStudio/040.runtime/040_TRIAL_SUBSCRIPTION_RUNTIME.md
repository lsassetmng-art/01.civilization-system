# ============================================================
# TRIAL SUBSCRIPTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines runtime handling of trial and paid subscription states.

runtime_steps:
1. resolve current billing/trial state
2. resolve eligibility for initial trial
3. resolve access continuation
4. resolve expiration timing
5. resolve paid activation after plan selection
6. keep governance handling unchanged regardless of billing state

runtime_principles:
- pricing state must be explicit
- expiration timing must be explainable
- paid activation must be deterministic
- governance and dangerous-action control must remain independent
