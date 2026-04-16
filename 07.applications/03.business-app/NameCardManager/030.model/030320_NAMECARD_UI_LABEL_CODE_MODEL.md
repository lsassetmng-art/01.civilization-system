# ============================================================
# NAMECARD UI LABEL CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_ui_label_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical UI label codes for badges and short UI text.

label_code_families:
- sync_badge_label_code
- app_share_badge_label_code
- erp_publication_badge_label_code
- relationship_badge_label_code
- protection_badge_label_code
- validation_message_label_code
- error_message_label_code

notes:
- label codes represent canonical UI wording targets
- label codes are separate from UI state codes
- one UI state may map to one or more label variants
