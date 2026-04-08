# ============================================================
# TRANSITION MODE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for transition-facing modes.

scope:
Covers onboarding transition export,
migration transition export,
recovery transition export,
and rejection of incomplete critical transition disclosure.

required_behavior:
- Support bounded transition-state projection.
- Distinguish current transition from completed stable state.
- Require historical label for completed transition history export.
- Reject incomplete critical transition export without safe projection.

projection_classes:
- current_transition_summary
- internal_transition_detail
- historical_transition
- audit_transition_trace

validation_rules:
- source_state is required.
- target_state is required.
- transition export must not be mistaken for stable end-state.
- historical export requires historical label.

failure_codes:
- TRANSITION_MODE_INT_SOURCE_STATE_MISSING
- TRANSITION_MODE_INT_TARGET_STATE_MISSING
- TRANSITION_MODE_INT_STABLE_STATE_CONFUSION
- TRANSITION_MODE_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- A staged activation is projected internally as current transition, not as fully active stable state.
