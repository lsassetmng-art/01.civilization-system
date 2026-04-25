# ============================================================
# STATIC ART ORIGIN COMMON COMPONENT OFFICIAL SELECTION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

selection_result:

  implementation_basis_selected:
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

  application_feature_selected:
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

selection_rules:
  - lower implementation evidence is canonical名を上書きしない
  - higher-level feature common name を優先する
  - StaticArt固有 taxonomy / wording / exact logic は共通部品へ持ち込まない
