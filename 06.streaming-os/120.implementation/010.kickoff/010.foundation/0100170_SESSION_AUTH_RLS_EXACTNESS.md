# ============================================================
# K1 SESSION AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: session
table: streaming_sessions
prepared_by: Zero
owner: Boss

public_read:
- allowed only where visibility_state and lifecycle_state projection permit
- never raw unrestricted read

owner_read:
- creator_self where owned
- channel_owner where owned
- company_official_manager where company-owned
- company_overseer only for oversight-safe subset
- platform_operator only through explicit support path
- runtime_worker for runtime-owned lifecycle operations

mutate_rules:
- create allowed for ownership-bound actor only
- update allowed for ownership-bound actor only
- transition allowed for ownership-bound actor and authorized runtime path only
- support override allowed only for explicit support path
- affiliation-only transition forbidden

transition_guardrails:
- transition must be state-aware
- transition must be auditable
- governance_block_flag may restrict transition
- publish_ready_flag may gate transition
- public endpoint must not bypass lifecycle rules

deny_rules:
- no public raw session write
- no unrelated viewer or creator mutation
- no lifecycle transition from affiliation only
- no hidden runtime transition without audit trail

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- company relation
- oversight relation
- support path flag
- current lifecycle_state

open_for_sql_precision_only:
- exact policy SQL
- exact audit linkage table
- exact transition reason-code catalog
