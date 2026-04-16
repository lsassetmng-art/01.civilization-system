# ============================================================
# STREAMING OS CORE TABLE FAMILY RLS BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. TABLE FAMILIES
# ============================================================

core_table_families:
- streaming_principals
- streaming_sessions
- archive_assets
- clip_assets
- external_publish_jobs
- tip_events
- reaction_events
- ranking_results
- ad_data

# ============================================================
# 2. BINDING RULES
# ============================================================

streaming_principals:
- public read:
  limited public-facing subset only via projection path
- self/owner read:
  creator_self,
  channel_owner,
  company_official_manager where ownership matches
- mutate:
  channel_owner,
  company_official_manager where ownership matches,
  platform_operator by support path only

streaming_sessions:
- public read:
  only public session subset by visibility/state policy
- owner read:
  creator_self / channel_owner / company official manager where owned
- mutate:
  owner-bound actors,
  runtime_worker for lifecycle transitions,
  platform_operator by support path only

archive_assets / clip_assets:
- public read:
  only when public-facing visibility and policy allow
- owner read:
  creator_self / owned-company actors / platform_operator
- mutate:
  owner-bound actors for publish-preparation-facing fields,
  runtime_worker for generation/projection/system state

external_publish_jobs:
- read:
  owner-bound actors,
  platform_operator,
  runtime_worker,
  integration_service
- mutate:
  runtime_worker,
  integration_service,
  platform_operator by support path only

tip_events:
- read:
  beneficiary-bound owner actors,
  company official manager where owned,
  platform_operator,
  analytics/runtime workers as system actors
- mutate:
  runtime_worker / integration_service for finalized execution path only
- deny:
  arbitrary viewer reads

reaction_events:
- read:
  owner/system/analytics contexts only,
  public raw event exposure denied by default
- mutate:
  viewer_self / runtime_worker through canonical endpoint path only

ranking_results:
- public read:
  allowed
- mutate:
  runtime_worker only

ad_data:
- read:
  platform_operator,
  authorized ad operator if later added,
  limited owner-side visibility where policy allows
- mutate:
  platform_operator / authorized ad operation path only

