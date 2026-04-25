# ============================================================
# STATIC ART ORIGIN COMMON COMPONENT FORMAL REVIEW LEDGER
# ============================================================

status: formal-review
owner: Boss
prepared_by: Zero

purpose:
Review StaticArtOS-origin common component candidates
inside the existing application-common-components governance flow.

review_scope:
- StaticArtOS起点候補のうち、application common として昇格可能なもの
- OS固有ロジックは除外
- lower implementation evidence は canonical name を上書きしない

approved_for_current_common_wave:

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

same_family_resolution:
  - ProductCard -> Product Card Common
  - LibraryShelf -> Library Shelf Common

held_outside_current_wave:
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

review_judgment:
  - StaticArtOS起点候補は application common の既存正式運用に乗せて扱う
  - 新しい index 体系は作らない
  - 既存 ledger / review / reflection の流れに追加する
