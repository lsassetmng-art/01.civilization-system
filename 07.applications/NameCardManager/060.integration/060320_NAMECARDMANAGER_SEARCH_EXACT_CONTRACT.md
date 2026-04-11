# ============================================================
# NAMECARDMANAGER SEARCH EXACT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact search scope, filter, and sorting behavior for initial implementation.

# ============================================================
# 1. SEARCH TARGETS
# ============================================================

phase_a_search_targets:
- full_name
- company_name
- department_name
- title_name
- email
- phone
- memo
- relationship_note
- normalized_company_name

phase_a_excluded_targets:
- OCR-derived text
- publication result text
- raw audit entries
- hidden protected internal notes for shared users

# ============================================================
# 2. MATCH MODES
# ============================================================

supported_match_modes_phase_a:
- exact
- prefix
- partial
- normalized_company_match

rules:
- exact compares normalized comparable string
- prefix is left-match after normalization
- partial is contains-match after normalization
- normalized_company_match uses normalized company key/value when available

phase_a_not_supported:
- romaji conversion search
- kana conversion search
- phonetic fuzzy ranking
- semantic embedding search

# ============================================================
# 3. BOOLEAN / FILTER BEHAVIOR
# ============================================================

default_query_behavior:
- multi-token query uses AND semantics in Phase A

supported_filters_phase_a:
- company_group_key
- sync_state
- app_share_state
- erp_publication_state
- deleted_excluded

filter_rules:
- deleted_excluded defaults to true
- unauthorized records must be filtered before result composition
- shared users search only visible records

# ============================================================
# 4. SORT KEYS
# ============================================================

supported_sort_keys_phase_a:
- recent_update
- recent_contact
- full_name
- company_name
- created_at

supported_sort_directions:
- asc
- desc

default_sort:
- recent_update desc

# ============================================================
# 5. RELATED HIT CONDITIONS
# ============================================================

related_people_hits_optional_rules:
- returned only when searching visible records
- derived from visible relationship summary only
- hidden protected relationship details must not leak through search

grouped_company_hits_optional_rules:
- returned only when normalized company grouping exists
- ambiguous grouping remains reviewable and non-destructive

# ============================================================
# 6. REQUEST / RESPONSE
# ============================================================

endpoint:
- POST /namecards/search

request_payload:
{
  "query": "optional string",
  "mode": "exact | prefix | partial | normalized_company_match",
  "filters": {
    "company_group_key": "optional string",
    "sync_state": "optional enum",
    "app_share_state": "optional enum",
    "erp_publication_state": "optional enum",
    "deleted_excluded": true
  },
  "sort": {
    "key": "recent_update",
    "direction": "desc"
  },
  "paging": {
    "page": 1,
    "page_size": 50
  }
}

response_payload:
{
  "success": true,
  "data": {
    "items": [],
    "grouped_company_hits_optional": [],
    "related_people_hits_optional": [],
    "paging": {
      "page": 1,
      "page_size": 50,
      "total_count": 0
    }
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 7. INDEX UPDATE STRATEGY
# ============================================================

phase_a_strategy:
- search index/update follows canonical record update
- async rebuild may exist but must not expose stale unauthorized visibility
- normalized company search support must update when company normalization changes

