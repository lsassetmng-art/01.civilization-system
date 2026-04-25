# ============================================================
# STATIC ART OS CX22073JW REFERENCE INTEGRATION EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: reference-integration
owner: Boss
prepared_by: Zero

foundation:
  - CX22073JW is not just storage.
  - CX22073JW is an AI-enabled knowledge and reference base.
  - StaticArtOS must send searchable, optimizable, cross-surface reference data.
  - Canonical write remains inside StaticArtOS.

official_reference_areas:
  - staticart_projection_search_area
  - staticart_preview_summary_area
  - staticart_rights_reference_area
  - staticart_continuity_signal_area
  - staticart_review_risk_reference_area
  - staticart_exhibition_reference_area

area_definitions:
  staticart_projection_search_area:
    role: marketplace/library/builder high-speed search and filter reference
    includes:
      - asset_id
      - visible title summary
      - asset_type
      - creator summary
      - badges
      - projection status
      - search tokens
      - language availability
      - lightweight filter fields
    excludes:
      - canonical sales source
      - canonical rights source
      - full file manifest

  staticart_preview_summary_area:
    role: product detail and preview rendering reference
    includes:
      - thumbnail refs
      - preview refs
      - sample availability summary
      - short description
      - presentation summary

  staticart_rights_reference_area:
    role: rights lookup and reasoning helper
    includes:
      - exhibition_allowed
      - derivative/commercial flags
      - age_rating
      - region_mode summary
      - effective block summary
      - rights summary text
      - latest effective window

  staticart_continuity_signal_area:
    role: continuation ordering and recency reference
    includes:
      - asset_id
      - user_id
      - last_opened_at
      - progress summary
      - favorite flag
      - device class summary
      - continue visibility signal

  staticart_review_risk_reference_area:
    role: review prioritization and governance monitoring reference
    includes:
      - asset_id
      - review round count
      - restriction history summary
      - reason code frequencies
      - integrity issue summary
      - risk tags

  staticart_exhibition_reference_area:
    role: safe lightweight read surface for Exhibition Builder
    includes:
      - asset_id
      - projection_status
      - usable_in_exhibition_builder
      - reason_codes
      - rights_summary_short
      - price_label
      - projection_refreshed_at

boundary:
  canonical_in_staticart:
    - asset_master
    - asset_version
    - asset_file
    - asset_localization
    - asset_rights_policy
    - asset_sales_offer
    - asset_subscription_rule
    - asset_review_request
    - asset_review_decision
    - user_asset_entitlement
    - user_reader_progress
    - user_viewer_progress
    - user_asset_annotation
    - user_asset_favorite
    - asset_audit_event

  reference_in_cx22073jw:
    - projection
    - summary
    - ranking
    - reference
    - risk
    - search

sync_direction:
  default: StaticArtOS canonical -> CX22073JW
  reverse_write: forbidden
  allowed_return_signals:
    - ai suggestion tag
    - risk hint
    - placement hint
  note:
    reverse signals must not overwrite canonical automatically

refresh_triggers:
  - publish
  - delist
  - restrict
  - archive
  - rights policy change
  - sales change
  - subscription change
  - localization change
  - projection refresh
  - progress save
  - favorite add/remove
  - review decision

retention:
  canonical:
    - preserve history
    - do not treat cx area as canonical backup
  cx22073jw:
    - keep latest reference-optimized surfaces
    - allow derived regeneration
    - keep tombstone-like summary for revoked/archived when useful
    - allow retention policy on continuity signals
