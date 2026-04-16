# ============================================================
# STREAMING OS CORPORATE MIGRATION DEPENDENCY FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

corporate_group_in_order:
- group_11_corporate_oversight

order_rule:
- corporate oversight tables should follow channel records
- channel profile states should follow channel records
- corporate oversight records and affiliated streamer references
  should follow both channel records and availability of company/streamer ids

tables:
- channel_records
- channel_profile_states
- corporate_channel_oversight_records
- affiliated_streamer_references

freeze_rule:
- official company ownership interpretation must not depend on affiliation tables
- affiliation visibility may depend on company and streamer ids,
  but must not redefine ownership of historical stream records

