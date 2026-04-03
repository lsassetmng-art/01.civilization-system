# ============================================================
# USER REGISTRATION SUBMIT FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: user-registration-screen
component: user-registration-submit-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOW
# ============================================================

canonical_flow:
- user_inputs_required_fields
- local_validation_runs
- legal_requirement_checked
- submit_enabled
- registration_submit_requested
- registration_processing_runs
- success_or_failure_resolves


# ============================================================
# 2. SUCCESS RESULT
# ============================================================

success_result:
- account_created
- registration_success_notice_shown
- post_registration_route_started


# ============================================================
# 3. FAILURE RESULT
# ============================================================

failure_result:
- registration_error_shown
- conflicting_field_highlighted_if_known
- user_remains_on_registration_screen


# ============================================================
# 4. FINAL RULE
# ============================================================

Submit flow must separate
local validation failure
from actual registration failure.
