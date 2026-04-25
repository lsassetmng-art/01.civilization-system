# ============================================================
# NAMECARD CAPTURE SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

sections:
  - capture_header
  - front_image_slot
  - back_image_slot
  - retake_controls
  - rotate_controls
  - quick_field_preview
  - save_draft_action
  - commit_action

states:
  - empty
  - front_only
  - front_and_back_ready
  - draft_saved_offline
  - commit_in_progress
  - commit_failed
  - validation_warning

rules:
  - mobile first
  - front side capture is primary
  - back side capture is optional
  - commit must not depend on OCR completion
  - offline save must be explicit
