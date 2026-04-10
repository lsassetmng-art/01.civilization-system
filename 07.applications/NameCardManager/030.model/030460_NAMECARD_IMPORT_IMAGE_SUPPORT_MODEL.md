# ============================================================
# NAMECARD IMPORT IMAGE SUPPORT MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines image-related migration support for imported name cards.

supported_capabilities:
- business card image reference import
- front/back image pairing
- protected staging target
- missing image warning
- incomplete pair warning

main_fields:
- front_image_reference
- back_image_reference
- front_image_import_state
- back_image_import_state
- image_pair_state
- image_warning_code

image_pair_states:
- both_present
- front_only
- back_only
- none

