# ============================================================
# NAMECARD IMPORT MAPPING MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines source-column to canonical-field mapping for migration import.

mapping_targets:
- full_name
- company_name
- department_name
- title_name
- email
- phone
- address_text
- website_url
- memo
- front_image_reference
- back_image_reference

mapping_support:
- auto_detect
- manual_override
- saved_mapping_profile
- source_type_template

