# ============================================================
# CIVILIZATION LIFE EVENT PROGRESS AND OUTCOME MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-progress-and-outcome

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PROGRESS TYPES
# ============================================================

progress_types:
- instant_resolution
- phased_resolution
- timed_wait_resolution
- review_resolution
- branching_resolution
- repeated_attempt_resolution


# ============================================================
# 2. OUTCOME TYPES
# ============================================================

outcome_types:
- success
- partial_success
- failure
- delayed
- redirected
- escalated
- suspended
- terminated


# ============================================================
# 3. FINAL RULE
# ============================================================

Life event progression
must resolve into explicit outcome types.
