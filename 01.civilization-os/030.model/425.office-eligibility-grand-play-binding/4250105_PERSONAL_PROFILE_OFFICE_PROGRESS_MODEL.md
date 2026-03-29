# ============================================================
# PERSONAL PROFILE OFFICE PROGRESS MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: personal-profile-office-progress

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PROFILE BLOCKS
# ============================================================

profile_blocks:
- actor_class_summary
- current_human_category_status
- reachable_office_classes
- blocked_office_classes
- current_entry_routes
- next_requirement_summary
- support_execution_role_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Personal profile
must show both reachable offices
and legally blocked offices.
