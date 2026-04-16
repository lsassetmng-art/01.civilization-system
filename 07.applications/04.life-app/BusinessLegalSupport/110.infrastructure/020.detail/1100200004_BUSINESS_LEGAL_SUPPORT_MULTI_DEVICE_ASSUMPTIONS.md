# ============================================================
# BUSINESS LEGAL SUPPORT MULTI DEVICE ASSUMPTIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 110.infrastructure
subfolder: 020.detail
owner: Boss
prepared_by: Zero

multi_device_assumptions:
  - iphone
  - android
  - pc
  - tablet

design_rules:
  - issue detail stays the main hub on all devices
  - list/detail split may widen on larger screens
  - summary/share remains explicit action on every device
  - write conflict handling is not fixed yet, but owner-first consistency is preserved
