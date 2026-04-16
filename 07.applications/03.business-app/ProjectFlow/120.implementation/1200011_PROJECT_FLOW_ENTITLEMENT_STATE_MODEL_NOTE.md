# ============================================================
# PROJECT FLOW ENTITLEMENT STATE MODEL NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for entitlement state handling.

candidate_state_fields:
- entitlement_state
- trial_started_at
- trial_ends_at
- subscription_started_at
- subscription_expires_at
- last_entitlement_checked_at

required_checks:
- startup entitlement check
- protected action guard check
- refresh after payment recovery
- consistent behavior across smartphone and pc

implementation_rules:
- entitlement evaluation should be centralized
- screen-level guards must rely on the same resolved state
- action-level guards must not duplicate inconsistent rules
