# ============================================================
# STATIC ART OS LOADING EMPTY ERROR FORBIDDEN MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

common_state_requirements:
  every_screen:
    - loading
    - empty
    - error
    - forbidden_or_read_only

state_rules:
  loading:
    - show skeleton or safe placeholder
    - disable primary destructive actions
  empty:
    - explain why no data exists
    - show next action CTA when meaningful
  error:
    - show retry
    - keep request_id visible where useful
  forbidden:
    - prefer read-only shell where partial visibility is allowed
    - show hard 403 screen where no visibility is allowed

important_cases:
  - product detail blocked by region
  - product detail blocked by age
  - library empty
  - review queue empty
  - creator workspace conflict on stale version_token
