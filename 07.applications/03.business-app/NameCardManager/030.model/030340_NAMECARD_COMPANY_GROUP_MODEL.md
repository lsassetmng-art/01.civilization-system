# ============================================================
# NAMECARD COMPANY GROUP MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines company-level grouping for name cards.

main_fields:
- company_group_key
- normalized_company_name
- representative_namecard_id
- member_count
- decision_maker_count
- working_contact_count
- latest_contact_at
- latest_update_at
- latest_publication_state

rules:
- grouping is based on normalized company identity
- group view is a presentation grouping, not a separate ownership source of truth
- ambiguous grouping should remain reviewable

