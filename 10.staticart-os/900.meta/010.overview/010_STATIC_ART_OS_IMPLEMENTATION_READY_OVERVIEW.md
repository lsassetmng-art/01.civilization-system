# ============================================================
# STATIC ART OS IMPLEMENTATION READY OVERVIEW
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: overview
owner: Boss
prepared_by: Zero

objective:
StaticArtOS must support the full lifecycle of static visual works
and publishing-type static assets from draft creation to review,
publication, entitlement resolution, library continuity, and
Exhibition Builder projection.

scope:
  asset_families:
    - artwork
    - illustration
    - poster
    - photo_art
    - static_visual
    - book
    - ebook
    - booklet
    - catalog
    - collection_book
    - material_booklet

main_flows:
  creator_side:
    - asset draft creation
    - file upload
    - metadata completion
    - rights configuration
    - sales/subscription configuration
    - self check
    - review submission
    - publish / delist / archive
  buyer_side:
    - marketplace discovery
    - product detail
    - sample open
    - purchase
    - library entry
    - reader/viewer continuation
  governance_side:
    - review queue
    - decision
    - restriction
    - legal/policy override
    - audit and projection refresh

frozen_design_axes:
  - database exactness
  - api exactness
  - screen and stateflow exactness
  - permission and policy exactness
  - cx22073jw reference integration exactness
  - acceptance and test exactness

canonical_principles:
  - Canonical write and derived projection must be separated.
  - Entitlement is computed and may be blocked without destroying history.
  - Restriction is stronger than delist.
  - Exhibition Builder consumes only derived projection.
  - Reader continuity and viewer continuity must be separated.
  - Favorite must survive entitlement loss.
  - Subscription access must never be promoted into permanent ownership.

implementation_ready_judgement:
  - StaticArtOS is no longer treated as skeleton-only design.
  - StaticArtOS is treated as implementation-ready integrated detailed design.
