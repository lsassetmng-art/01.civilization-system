# ============================================================
# NAMECARD NEXT ACTION SUGGESTION MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines rule-based next action suggestions.

suggestion_types:
- complete_missing_information
- share_to_app_targets
- request_ERP_publication
- follow_up_contact
- review_duplicate_candidate
- review_relationships
- prepare_meeting

main_fields:
- suggestion_type
- suggestion_reason
- priority_level
- blocking_dependency_optional

