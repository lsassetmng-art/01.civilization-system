# ============================================================
# STATIC ART OS SCREEN STATEFLOW EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

platforms:
  - iPhone
  - Android
  - PC
  - tablet

screen_groups:
  creator_surface:
    - SA-CR-001 Asset Draft List
    - SA-CR-010 Create Asset
    - SA-CR-020 Asset Workspace
  marketplace_surface:
    - SA-MK-001 Marketplace List
    - SA-MK-010 Product Detail
    - SA-MK-020 Purchase Result Overlay
  library_surface:
    - SA-LB-001 My Library
    - SA-LB-010 Continue Reading
    - SA-LB-020 Continue Viewing
    - SA-RD-001 Reader
    - SA-RD-010 Reader Bookmark/Note Panel
    - SA-VW-001 Viewer
  admin_surface:
    - SA-AD-001 Review Queue
    - SA-AD-010 Review Detail
    - SA-AD-020 Restriction/Delist/Audit Detail

creator_workspace_tabs:
  - Files
  - Metadata
  - Preview / Sample
  - Rights
  - Sales
  - Subscription
  - Self Check
  - Review
  - Publish
  - Audit Summary

creator_flow:
  - Asset Draft List
  - Create Asset
  - Asset Workspace Files
  - Asset Workspace Metadata
  - Asset Workspace Preview/Sample
  - Asset Workspace Rights
  - Asset Workspace Sales
  - Asset Workspace Subscription
  - Asset Workspace Self Check
  - Asset Workspace Review
  - Asset Workspace Publish

creator_rules:
  - Files tab must display required file_role matrix by asset_type.
  - Metadata tab must become read-only during review_pending.
  - Preview/Sample tab must distinguish publishing sample vs visual sample.
  - Rights tab must preview marketplace/library/exhibition impact.
  - Self Check must list blockers and repair links.
  - Review tab submit becomes active only after self_check_passed and zero blockers.
  - Publish tab must expose marketplace publish, library-only publish, delist, archive according to state.

marketplace_rules:
  - Product cards show thumbnail, title, creator, asset_type, price, badges, owned state, sample availability.
  - Product detail must use allowed_actions as UI truth source.
  - Product detail blocked state may still show detail while disabling full-open CTA.
  - Purchase success overlay must show library-added and open-now actions.

library_rules:
  - My Library must separate All, Books, Visual, Favorites, Downloaded shelves.
  - Continue Reading must show progress_percent and locator summary.
  - Continue Viewing must show current page/frame and zoom summary.
  - Reader and Viewer must store continuity independently.
  - Sample mode must expose purchase/subscription CTA without pretending full access.
  - Favorite toggle must remain available where detail is visible and user is signed in.

reader_rules:
  - Reader focuses on chapter/body/bookmark/note/highlight.
  - Save triggers include page change, app background, manual close, interval save.

viewer_rules:
  - Viewer focuses on canvas/page strip/zoom/fullscreen/fit mode.
  - Save triggers include page change, zoom threshold change, background, close.

admin_rules:
  - Review Queue lists pending review items with risk badges and sortable metadata.
  - Review Detail must show asset summary, file readiness, metadata, rights, preview, self-check result, prior decisions.
  - Review Detail decision panel requires reason_code for reject/rework/restrict.
  - Restriction/Delist/Audit Detail must show blocking effects and affected surfaces.

ui_state_contract:
  every_screen_must_have:
    - loading state
    - empty state
    - error state
    - forbidden or read-only state where applicable

button_activation:
  review_submit:
    required:
      - lifecycle_state=self_check_passed
      - no pending review
      - required files complete
      - at least one localization
      - rights configured
  publish_marketplace:
    required:
      - lifecycle_state=approved
      - required publish files ready
      - metadata complete
      - rights configured
      - sales valid
      - not restricted
  full_open:
    required:
      - full entitlement state
      - published lifecycle exposure
      - no region block
      - no age block
      - no rights change block
      - not restricted
  favorite_toggle:
    required:
      - signed in
      - detail visible

stateflow:
  creator_main:
    - create success -> workspace files
    - required file complete -> files_uploaded
    - metadata sufficient -> metadata_completed
    - self check pass -> self_check_passed
    - submit review -> review_pending
    - review approve -> approved
    - publish marketplace -> published_marketplace
    - publish library only -> published_library_only
    - delist -> delisted
    - restrict -> restricted
    - archive -> archived

  creator_rework:
    - review decision rework_required or rejected
    - workspace reopened for editing
    - self check rerun
    - review resubmit with incremented round

  buyer_purchase:
    - marketplace list
    - product detail
    - sample or purchase
    - purchase success overlay
    - reader or viewer
    - my library

  continuity:
    - reader progress save -> continue reading projection refresh
    - viewer progress save -> continue viewing projection refresh

  restriction:
    - published asset
    - policy/review issue
    - restricted or delisted
    - marketplace/library/access/exhibition refreshed
    - audit recorded

asset_type_split:
  publishing:
    - Continue Reading
    - Reader
    - locator based continuity
    - chapter navigation
    - bookmark/note/highlight emphasis
  visual:
    - Continue Viewing
    - Viewer
    - page/frame continuity
    - zoom persistence
    - fullscreen and fit mode emphasis
