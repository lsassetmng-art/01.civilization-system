# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR COMMON LEDGER OR APP LEDGER
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md

recommended_insert_depth:
short_to_medium

recommended_insert_location:
- application consumers section
- application references section
- future reuse/reference appendix

copy_block:
  - consumer_application: ProductPortfolioManager
    consumer_role:
      product strategy judgment application
    common-needing-areas:
      - localization
      - currency context display
      - score/status display surfaces
      - alert and approval surfaces
      - history/audit visibility surfaces
      - responsive cross-device shell
    current_state:
      - common-component candidates already separated out
      - app-specific design expanded
      - implementation not started

note:
This is not for moving ProductPortfolioManager into common components.
It is only for showing that the app consumes common capabilities.
