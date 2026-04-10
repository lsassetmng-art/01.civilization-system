# ============================================================
# NAMECARD SEARCH INDEX MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines search-target structure for fuzzy and business-context search.

search_targets:
- full_name
- company_name
- department_name
- title_name
- email
- phone
- memo
- relationship_note
- order_history_summary
- company_group_label

search_modes:
- exact
- prefix
- partial
- normalized_company_match
- related_context_match

result_sort_priorities:
- exact_match_first
- recent_contact_first
- recent_update_first
- shared_or_published_priority_optional

