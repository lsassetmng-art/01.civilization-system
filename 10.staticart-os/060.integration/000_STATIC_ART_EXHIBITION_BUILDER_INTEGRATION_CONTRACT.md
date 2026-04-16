# ============================================================
# STATIC ART EXHIBITION BUILDER INTEGRATION CONTRACT
# ============================================================

status: implementation-ready-integration
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This contract defines the projection payload that StaticArtOS provides to Exhibition Builder.

## 2. Required Projection Fields

- asset_id
- asset_type
- title
- creator_display_name
- short_description
- thumbnail_url
- preview_url
- entitlement_state
- exhibition_allowed
- additional_license_required
- price_label
- rights_summary
- current_version_no
- collection_ref
- series_ref
- usable_in_exhibition_builder

## 3. Eligibility Conditions

Projection is usable only when all are true:
- asset lifecycle is published
- asset is not restricted or archived
- rights policy allows exhibition
- regional policy allows exposure
- age policy allows exposure
- entitlement policy is satisfied when required
- current version is visible

## 4. Query Contract

### Read Eligible Assets

GET /v1/staticart/exhibition/projection?ownerUserId={userId}&eligibleOnly=true

### Response Shape

- items[]
  - assetId
  - assetType
  - title
  - creatorName
  - description
  - thumbnailUrl
  - previewUrl
  - entitlementState
  - exhibitionAllowed
  - additionalLicenseRequired
  - priceLabel
  - rightsSummary
  - usableInExhibitionBuilder

## 5. Mutation Rule

Exhibition Builder may read and reference projection data but may not mutate StaticArtOS canonical asset, rights, entitlement, or projection source records.
