# ============================================================
# NATION DETAIL OFFICE RULE SUMMARY MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: nation-detail-office-rule-summary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUMMARY BLOCKS
# ============================================================

summary_blocks:
- human_only_office_summary
- office_entry_route_summary
- civil_service_entry_summary
- political_office_compatibility_summary
- military_office_compatibility_summary
- ceremonial_office_compatibility_summary
- nation_override_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation detail
must explain office rules
at nation level
before individual application.
