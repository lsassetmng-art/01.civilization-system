# ============================================================
# STREAMING OS CORPORATE AND OVERSIGHT TABLE FAMILY RLS BINDING FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

corporate_table_families:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

binding_rules:

channel_records / channel_profile_states:
- public read:
  allowed for public-facing subset only
- owner read:
  channel_owner,
  creator_self where same owner,
  company_official_manager where company-owned,
  company_overseer for oversight subset,
  platform_operator
- mutate:
  channel_owner,
  company_official_manager where company-owned,
  platform_operator by support path only

corporate_channel_oversight_records:
- read:
  company_overseer,
  company_official_manager,
  platform_operator
- mutate:
  company_overseer,
  company_official_manager where oversight authority granted,
  platform_operator by support path only
- deny:
  public viewers,
  affiliated participants without oversight authority

affiliated_streamer_references:
- read:
  company_overseer,
  company_official_manager,
  affiliated streamer themselves for limited self-related subset,
  platform_operator
- mutate:
  company_overseer,
  company_official_manager where oversight authority granted,
  platform_operator by support path only
- deny:
  arbitrary public viewers

freeze_rules:
- public channel visibility is not equal to corporate oversight visibility
- affiliation visibility is not equal to ownership mutation authority
- company oversight authority is not implied by mere on-screen participation

