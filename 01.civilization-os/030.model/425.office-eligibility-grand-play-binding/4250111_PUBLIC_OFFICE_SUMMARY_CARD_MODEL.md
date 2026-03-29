# ============================================================
# PUBLIC OFFICE SUMMARY CARD MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: public-office-summary-card

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUMMARY THEMES
# ============================================================

summary_themes:
- actor_class
- human_category
- office_class
- office_type
- eligibility_state
- entry_route
- authority_scope
- blocked_reason
- support_role_fallback


# ============================================================
# 2. FINAL RULE
# ============================================================

Summary cards
must let the user understand
office legality at a glance.
