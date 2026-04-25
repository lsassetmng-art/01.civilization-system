# ============================================================
# LIFE OS SEARCH / FILTER / QUERY EXACT DESIGN
# ============================================================

status: canonical-draft
document_code: 925440
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix exact search, filter, sort, and query semantics for LifeOS screens and operator surfaces.
- Ensure user-facing discovery and operator querying are consistent with canonical/projection boundaries.
- Prevent ambiguous search behavior across timeline, review, reminders, imports, and audits.

principles:
- search scope must be explicit
- filter semantics must be deterministic
- sort order must be stable
- operator query surface differs from user query surface
- search over projections must declare backlink to canonical sources
- persona-linked search uses refs/signed snapshot display bindings only, not mutable truth

# ============================================================
# 1. QUERY SURFACES
# ============================================================

query_surfaces:
  user_timeline_search:
    scope:
      timeline projection items
  user_review_filter:
    scope:
      review summaries and supporting derived slices
  user_goal_filter:
    scope:
      active and historical goal projections
  reminder_filter:
    scope:
      reminder jobs and derived delivery summaries
  import_history_filter:
    scope:
      import jobs, normalized status, rejection summaries
  export_history_filter:
    scope:
      export jobs and manifests
  operator_audit_search:
    scope:
      operator/system audit records
  persona_binding_query:
    scope:
      persona request/result refs and applied snapshot bindings only

# ============================================================
# 2. EXACT FILTER FAMILIES
# ============================================================

filter_families:
  time_window_filters:
    - local_day
    - local_week
    - local_month
    - rolling_7d
    - rolling_30d
    - custom_range
  status_filters:
    - active
    - completed
    - dismissed
    - failed
    - pending
    - stale
    - quarantined
  source_filters:
    - manual
    - import
    - connector
    - scheduler
    - operator
  severity_filters:
    - low
    - medium
    - high
    - critical
  channel_filters:
    - in_app
    - push
    - email
    - sms
  record_type_filters:
    - habit_log
    - health_metric_log
    - goal_event
    - review_event
    - reminder_job
    - import_job
    - export_job
    - audit_event

# ============================================================
# 3. SEARCH SEMANTICS
# ============================================================

search_semantics:
  free_text_query:
    applies_to:
      - user-visible labels
      - note_text
      - summary_text
      - operator audit summary
    excludes_by_default:
      - raw JSON internals
      - hidden policy basis internals
      - mutable persona truth
  exact_code_query:
    applies_to:
      - habit_code
      - metric_code
      - reminder_code
      - alert_code
      - audit_code
      - export_type
  query_normalization:
    - trim whitespace
    - collapse repeated spaces
    - lowercase where case-insensitive search is defined
  stable_sort_tiebreak:
    - primary sort field
    - secondary occurred_at desc
    - tertiary event_id desc or canonical id desc

search_result_rules:
  - timeline search returns projection items with canonical backlink
  - operator audit search may expose more fields than user search
  - review search uses derived summary scope, not raw hidden internals by default
  - persona binding query returns refs and display contract info only

# ============================================================
# 4. QUERY TO CANONICAL / PROJECTION MAPPING
# ============================================================

query_mapping:
  timeline_screen:
    primary_surface:
      projection
    backlink_required:
      yes
  dashboard_screen:
    primary_surface:
      projection
    searchable:
      limited
  reminders_screen:
    primary_surface:
      canonical reminder_job plus derived delivery summary
  import_history_screen:
    primary_surface:
      import registry and rejection summaries
  export_history_screen:
    primary_surface:
      export manifest and job state
  operator_console:
    primary_surface:
      audit records, reconciliation status, projection status
  persona_binding_screen:
    primary_surface:
      request/result refs and signed snapshot bindings

# ============================================================
# 5. PERSONA BOUNDARY SEARCH RULE
# ============================================================

persona_boundary_search_rule:
  same_pattern_as_business_to_persona:
    - LifeOS request
    - PersonaOS apply
    - LifeOS result
  searchable_persona_related_fields_in_lifeos:
    - persona_id
    - snapshot_id
    - applied_snapshot_id
    - signed_snapshot_ref
    - request_event_id
    - result_event_id
    - display_contract_code
  prohibited_search_targets:
    - mutable persona canonical state
    - canonical memory truth
    - canonical emotion truth
    - canonical growth truth
    - canonical trust truth

# ============================================================
# 6. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
  required_tests:
    - identical query returns stable sort order across repeated reads
    - timeline search items include canonical backlink
    - operator audit search exposes operator/audit scope without leaking hidden disallowed fields
    - reminder filters by status and channel are deterministic
    - persona binding query returns refs only
  release_blockers:
    - ambiguous filter semantics
    - projection search result without canonical backlink
    - persona search exposing mutable persona truth
