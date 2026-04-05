# ============================================================
# NAMECARD RECORD MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_record
owner: Boss
prepared_by: Zero

purpose:
Stores the basic identity and card information.

fields:
- namecard_id
- owner_user_id
- local_device_id
- full_name
- company_name
- department_name
- title_name
- email
- phone
- address_text
- website_url
- front_image_uri
- back_image_uri
- memo
- created_at
- updated_at
- deleted_at
- sync_state
- app_share_state
- erp_publish_state

notes:
- BusinessOS is canonical.
- deleted_at is logical delete oriented.
