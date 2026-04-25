# ============================================================
# STATIC ART ORIGIN SHARED ADOPTION READY SET
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

ready_for_application_common:

  implementation_basis:
    - ScreenShell
    - StatePanel
    - ActionButton
    - canonical response envelope helper
    - canonical error envelope helper
    - permission guard base
    - validator helper set
    - idempotency service base
    - StaticArtError / error-code base pattern
    - lifecycle transition helper base

  application_feature:
    - Asset Metadata Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
    - Product Card Common
    - Library Shelf Common
    - Multilingual Label Common
    - Multicurrency Price Display Common
    - Review Queue Common
    - Asset Upload Common
    - Rights Policy Editor Common
    - Marketplace Sort Panel Common
    - Product Detail Summary Common
    - Owned Badge Common
    - Subscription Included Badge Common
    - Bookmark Common
    - Favorite Toggle Common

hold_outside_current_wave:
  - Continue Reading / Continue Viewing Common
  - Reader Progress Sync Common
  - Viewer Progress Sync Common
  - Sales Offer Editor Common
  - Subscription Eligibility Editor Common
  - Sample Access Common
  - Restriction Policy Summary Common
  - Exhibition Eligibility Badge Common
  - AllowedActionsPanel
  - AssetSummaryRail
  - WorkspaceTabNav
  - ReviewDecisionPanel
