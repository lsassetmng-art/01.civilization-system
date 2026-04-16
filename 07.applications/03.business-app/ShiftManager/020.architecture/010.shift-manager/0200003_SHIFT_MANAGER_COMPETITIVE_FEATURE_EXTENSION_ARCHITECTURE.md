# ============================================================
# SHIFT MANAGER COMPETITIVE FEATURE EXTENSION ARCHITECTURE
# ============================================================

status: design-extension
type: competitive-feature-extension-architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document adds the competitive-strengthening features
that should extend ShiftManager beyond basic shift creation/sharing.

# ============================================================
# 2. ADDED FEATURE GROUPS
# ============================================================

added_feature_groups:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- future candidate: shift exchange / support-request
- scheduled automatic draft generation

# ============================================================
# 3. HEADQUARTERS SITE MANAGEMENT DASHBOARD
# ============================================================

purpose:
Provide head-office level visibility
across multiple sites/stores without forcing heavy ERP screens.

core_values:
- see site subscription status
- see site publication status
- see shortage counts
- see warning counts
- see unconfirmed changes
- see ERP export failures
- see inactive/read-only sites quickly

initial_dashboard_cards:
- site count
- active trial inactive site counts
- unpublished site count
- shortage slot count
- warning count
- unconfirmed change count
- ERP export failed count

# ============================================================
# 4. SHORTAGE / DIFFERENCE / UNCONFIRMED VISUALIZATION
# ============================================================

purpose:
Reduce operational accidents after generation or republish.

visualization_targets:
- shortage count
- unassigned slot count
- republish differences
- changed time/person/role
- who has not yet confirmed change visibility

important_rule:
This layer is for operational safety,
not only for reporting.

# ============================================================
# 5. REQUESTED DAY-OFF SUBMISSION / CHANGE CONFIRMATION
# ============================================================

requested_day_off_submission:
- staff can submit requested day off
- manager can review before generation/manual planning
- submission remains draft/planning-side input

change_confirmation_flag:
- after republish or urgent change,
  affected viewers may mark change as confirmed
- manager can see confirmation progress

# ============================================================
# 6. LIGHTWEIGHT MULTI-SITE ANALYTICS
# ============================================================

purpose:
Provide simple operational insight
without turning ShiftManager into a heavy BI tool.

recommended_metrics:
- per-site unpublished count
- per-site shortage count
- warning count
- same-day change count
- PDF export count
- ERP failure count
- requested day-off pending count
- change confirmation pending count

# ============================================================
# 7. FUTURE CANDIDATE: SHIFT EXCHANGE / SUPPORT REQUEST
# ============================================================

future_candidates:
- shift exchange request
- support request to another site/team
- temporary open-shift response

important_note:
These are future candidates,
not required for the first implementation entry.

# ============================================================
# 8. SCHEDULED AUTOMATIC DRAFT GENERATION
# ============================================================

purpose:
Allow managers to reserve automatic draft generation
at configured weekly/monthly times.

important_rule:
Scheduled generation creates draft only.
It must never:
- auto publish
- auto share
- auto export to ERP
- auto perform formal PDF distribution

supported_schedule_patterns:
- weekly day-of-week + time
- monthly fixed day + time
- monthly last day + time
- optional manual run-now

target_period_modes:
- next_week
- next_month

# ============================================================
# 9. ARCHITECTURAL POSITION
# ============================================================

positioning:
- headquarters dashboard = management visibility layer
- shortage/difference/unconfirmed = operational safety layer
- requested day-off = planning input layer
- confirmation flag = publication follow-up layer
- lightweight analytics = operational insight layer
- scheduled generation = timer-driven draft-preparation layer

# ============================================================
# 10. CONCLUSION
# ============================================================

These additions strengthen ShiftManager by making it:
- easier to operate across many sites
- safer after generation/republication
- more useful to staff and managers
- more competitive without abandoning its simple pricing model

