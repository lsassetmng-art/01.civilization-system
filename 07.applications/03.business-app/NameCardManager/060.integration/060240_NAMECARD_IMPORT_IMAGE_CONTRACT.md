# ============================================================
# NAMECARD IMPORT IMAGE CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines imported image reference intake and pairing direction.

request_direction:
- front_image_reference
- back_image_reference
- image_source_type
- protected_staging_required

response_direction:
- front_image_import_state
- back_image_import_state
- image_pair_state
- image_warning_items

