# ============================================================
# K5 AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: corporate
prepared_by: Zero
owner: Boss

channel_rules:
- public read allowed only for public-facing channel projection subset
- owner read allowed for channel_owner and company_official_manager where company-owned
- company_overseer may read oversight-safe subset only
- platform_operator access requires explicit support path
- mutate allowed for channel_owner and company_official_manager where authority applies
- affiliation-only mutation forbidden

oversight_rules:
- corporate_channel_oversight_records are readable by company_overseer, company_official_manager, platform_operator by support path
- oversight mutation allowed only to company_overseer and company_official_manager where granted
- public viewers and unrelated creators cannot read raw oversight records

affiliation_rules:
- affiliated_streamer_references readable by company_overseer, company_official_manager, limited self-related subset for target streamer, platform_operator by support path
- affiliation mutation allowed only to company_overseer and company_official_manager where granted
- affiliation never implies ownership mutation
- affiliation visibility never implies full oversight visibility

global_principles:
- public channel visibility != corporate oversight visibility
- channel ownership != streamer affiliation
- support-path access must remain explicit and auditable
- corporate dashboard projections remain company-scoped, not public-scoped

deny_rules:
- no public raw oversight read
- no affiliation-only mutate_owned authority
- no unrelated viewer read of affiliation internals
- no permanent unrestricted platform_operator full-read path
- no channel public profile read path that exposes private oversight data

required_resolution_inputs:
- actor identity
- actor class
- ownership relation
- company relation
- oversight relation
- affiliation relation
- support path flag

open_for_sql_precision_only:
- exact policy SQL
- exact projection naming
- exact support-path audit linkage
- exact limited-self-subset definition
