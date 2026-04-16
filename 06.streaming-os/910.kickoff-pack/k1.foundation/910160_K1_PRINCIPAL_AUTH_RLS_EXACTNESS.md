# ============================================================
# K1 PRINCIPAL AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: principal
table: streaming_principals
prepared_by: Zero
owner: Boss

public_read:
- allowed only on public-facing projection subset
- never raw unrestricted read

self_or_owner_read:
- creator_self where self-bound
- channel_owner where owned
- company_official_manager where company-owned
- company_overseer only for oversight-safe subset
- platform_operator only through explicit support path

mutate_rules:
- ownership-bound mutation only
- affiliation-only mutation forbidden
- platform_operator mutation only through explicit support path
- runtime_worker does not own human principal editing semantics

deny_rules:
- no public raw principal read
- no affiliation-only ownership mutation
- no unrelated creator read of owner/private principal fields
- no permanent unrestricted platform_operator full-read path

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- company relation
- oversight relation
- support path flag

open_for_sql_precision_only:
- exact policy SQL
- exact support path audit field
- exact projection view names
