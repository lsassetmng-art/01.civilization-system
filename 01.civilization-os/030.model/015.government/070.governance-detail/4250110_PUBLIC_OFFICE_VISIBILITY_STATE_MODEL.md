# ============================================================
# PUBLIC OFFICE VISIBILITY STATE MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: public-office-visibility-state

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- hidden
- teaser_only
- visible_but_blocked
- visible_entry_route_only
- visible_application_ready
- visible_current_office
- crisis_opened_visibility


# ============================================================
# 2. FINAL RULE
# ============================================================

Office visibility
must distinguish discovery,
readiness,
and legal eligibility.
