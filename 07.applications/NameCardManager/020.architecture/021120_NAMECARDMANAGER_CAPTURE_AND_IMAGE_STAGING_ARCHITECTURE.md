# ============================================================
# NAMECARDMANAGER CAPTURE AND IMAGE STAGING ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

goal:
  - support fast mobile intake
  - support front/back image capture
  - support offline-safe temporary staging
  - support later manual correction
  - support safe commit into canonical namecard state

flow:
  - create capture session
  - capture front image
  - optionally capture back image
  - store binaries in protected staging
  - review / rotate / retake
  - save draft if offline
  - commit staged refs into canonical namecard record
  - cleanup abandoned staged binaries later

rules:
  - staged images are protected
  - staged images are not ERP payload
  - access is owner/editor scoped
  - binary content stays outside main relational rows
