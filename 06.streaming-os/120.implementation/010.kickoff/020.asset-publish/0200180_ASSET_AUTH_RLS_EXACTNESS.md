# ============================================================
# K2 ASSET AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: asset
tables:
- archive_assets
- clip_assets
prepared_by: Zero
owner: Boss

public_read:
- allowed only where visibility_state, publication_state,
  and policy projection permit
- never raw unrestricted table read

owner_read:
- creator_self where owned
- channel_owner where owned
- company_official_manager where company-owned
- company_overseer only for oversight-safe subset
- platform_operator only through explicit support path
- runtime_worker for runtime-owned processing path only

mutate_rules:
- owner-bound asset mutation only
- affiliation-only mutation forbidden
- runtime_worker may update system-processing fields only
- platform_operator mutation only through explicit support path

governance_rules:
- review_state does not equal publication_state
- governance_state does not equal publication_state
- publication eligibility may depend on governance but does not collapse into it
- viewer-facing reads must use projection-safe subset only

deny_rules:
- no public raw asset read
- no affiliation-only asset mutation
- no unrelated creator/private-owner asset read
- no raw runtime processing fields exposed publicly

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- company relation
- oversight relation
- support path flag
- visibility/publication policy projection

open_for_sql_precision_only:
- exact policy SQL
- exact projection view naming
- exact column masking
- exact support-path audit linkage
