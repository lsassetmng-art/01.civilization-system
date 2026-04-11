# ============================================================
# NAMECARDMANAGER PLATFORM SUPPORT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes target platform support and platform-role architecture.

supported_platforms:
- iPhone
- Android
- tablet
- PC

platform_strategy:
- mobile-first
- tablet-extended
- PC-management-enhanced

platform_roles:
- iPhone:
  - quick capture
  - quick edit
  - quick follow-up check
  - mobile auth use
- Android:
  - quick capture
  - quick edit
  - quick follow-up check
  - mobile auth use
- tablet:
  - larger list/detail use
  - meeting prep use
  - review-oriented use
  - shared review use
- PC:
  - migration/import use
  - large-volume review
  - company view
  - configuration
  - publication / approval review
  - management-oriented operation

architecture_rules:
- platform support does not change canonical business meaning
- platform-specific UX may differ while preserving shared behavior rules
- image capture flows are mobile/tablet priority
- import/review/admin flows are PC-priority capable

