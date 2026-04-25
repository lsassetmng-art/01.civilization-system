# ============================================================
# STATIC ART ORIGIN COMMON COMPONENT LEDGER
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

purpose:
  - StaticArtOS 起点で抽出・精査された共通部品候補のうち、
    application common として扱う対象群を正本台帳として固定する

origin_reference:
  - 10.staticart-os/123.ui-implementation-prep
  - StaticArtOS 側は起点/候補/監査/反映メモを保持
  - 本ファイルは application common 側の正本台帳

implementation_basis_candidates:
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

application_feature_candidates:
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

same_family_resolution:
  - ProductCard -> Product Card Common
  - LibraryShelf -> Library Shelf Common

not_in_current_common_wave:
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
