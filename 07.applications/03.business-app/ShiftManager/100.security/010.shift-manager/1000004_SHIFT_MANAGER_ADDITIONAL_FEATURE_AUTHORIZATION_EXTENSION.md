# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE AUTHORIZATION EXTENSION
# ============================================================

status: design-extension
type: additional-feature-authorization-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes authorization direction
for newly added competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

requested_day_off_authorization:
staff:
- create for self only
- view self requests only

department_manager / shift_admin:
- view/review within managed scope

enterprise_admin / headquarters_operator:
- only if business policy explicitly allows cross-site review

# ============================================================
# 3. CHANGE CONFIRMATION
# ============================================================

change_confirmation_authorization:
affected_viewer:
- confirm only own visible affected change rows

manager_side:
- view pending/confirmed summary in managed scope

# ============================================================
# 4. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

headquarters_authorization:
- headquarters_operator
- enterprise_admin
- explicitly allowed equivalent role

policy:
No uncontrolled cross-company or cross-scope visibility.

# ============================================================
# 5. SCHEDULED AUTO GENERATION
# ============================================================

scheduled_generation_authorization:
shift_admin:
- create/update/run-now in managed scope

department_manager:
- create/update/run-now in own managed scope

team_leader:
- optional later, not initial default

staff:
- denied

integration_operator:
- denied

# ============================================================
# 6. CONCLUSION
# ============================================================

Additional features must preserve the same principles:
- explicit authority
- explicit scope
- no device-based permission split
- inactive subscription blocks mutation features

