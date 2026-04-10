# ============================================================
# NAMECARD DUPLICATE CANDIDATE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines duplicate candidate review structure.

candidate_types:
- same_person_candidate
- same_company_candidate
- similar_card_candidate

main_fields:
- candidate_record_id
- candidate_reason
- similarity_level
- review_required
- auto_merge_not_allowed_by_default

