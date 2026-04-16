# ============================================================
# STATIC ART OS BUTTON STATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

buttons:
  review_submit:
    enabled_if:
      - lifecycle_state=self_check_passed
      - no pending review
      - required files complete
      - localization exists
      - rights configured

  publish_marketplace:
    enabled_if:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured
      - sales valid
      - not restricted

  publish_library_only:
    enabled_if:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured

  full_open:
    enabled_if:
      - effective entitlement is full-access type
      - lifecycle is publish-visible
      - no region block
      - no age block
      - no rights-change block
      - not restricted

  favorite_toggle:
    enabled_if:
      - signed in
      - detail visible

  self_check_run:
    enabled_if:
      - asset draft exists
      - required governed inputs can be evaluated

ui_rule:
  - disabled buttons must show reason text where applicable
