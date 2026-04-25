# ============================================================
# K2 EXTERNAL PUBLISH AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: external-publish
table: external_publish_jobs
prepared_by: Zero
owner: Boss

public_read:
- forbidden

owner_read:
- creator_self where publish source is owned
- channel_owner where publish source is owned
- company_official_manager where company-owned
- company_overseer only for oversight-safe subset
- platform_operator through explicit support path
- runtime_worker and integration_service for execution path

mutate_rules:
- create allowed only for ownership-bound actor through canonical API
- update by end-user actor is not canonical at K2
- dispatch/result mutation reserved for runtime_worker and integration_service
- platform_operator mutation only through explicit support path

integration_boundary_rules:
- external publish job is a control-plane object, not a watch object
- target secrets and credentials are never public
- dispatch and retry are internal-only runtime concerns
- job visibility must not imply watch-time asset visibility

deny_rules:
- no public read
- no arbitrary viewer read
- no affiliation-only create
- no end-user direct dispatch-state mutation
- no raw target secret exposure

required_resolution_inputs:
- actor identity
- actor class
- ownership relation to publish source
- company relation
- oversight relation
- support path flag
- runtime/integration execution role

open_for_sql_precision_only:
- exact policy SQL
- exact secret-isolation strategy
- exact support-path audit linkage
- exact runtime mutation column set
