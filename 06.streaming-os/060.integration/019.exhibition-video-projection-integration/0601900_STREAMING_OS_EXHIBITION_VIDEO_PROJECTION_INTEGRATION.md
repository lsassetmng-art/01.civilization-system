# STREAMING OS EXHIBITION VIDEO PROJECTION INTEGRATION

status: design-review-ready
layer: integration
system: StreamingOS
consumer: CivilizationOS Exhibition Builder
owner: Boss

## 1. Purpose

Define a read-only projection for selecting StreamingOS video assets in exhibitions without transferring StreamingOS canonical ownership.

## 2. Projection fields

- streaming_asset_id
- canonical_version_no
- asset_kind
- title
- creator_id
- creator_display_name
- duration_seconds
- thumbnail_reference
- preview_reference
- playback_reference
- publication_state
- rights_state
- exhibition_allowed
- additional_license_required
- region_policy
- age_policy
- entitlement_state
- rights_valid_from
- rights_valid_until
- projection_version
- projected_at

Playback references must be revocable or short-lived.

Raw storage locations must not be exposed.

## 3. Eligibility

A projection is selectable only when:

- publication is active
- exhibition use is allowed
- the version is current
- rights are valid for the scheduled exhibition window
- region policy passes
- age policy passes
- entitlement policy passes

## 4. Mutation boundary

CivilizationOS may store only:

- the canonical source reference
- an immutable submission-time projection snapshot

CivilizationOS may not mutate StreamingOS asset, duration, publication, rights, entitlement, or playback truth.

## 5. Runtime validation

Rights and playback eligibility must be revalidated:

- before scheduling
- before opening

Revoked, expired, stale, or unavailable video must block opening until replaced or removed.

Historical price and approval evidence must remain unchanged.

## 6. Pricing input

duration_seconds and asset_kind are authoritative pricing inputs.

The following are not billable exhibit counts:

- file count
- rendition count
- subtitle count
- thumbnail count

## 7. Failure states

Canonical failures are:

- not-found
- forbidden
- rights-expired
- region-blocked
- age-blocked
- entitlement-required
- stale-projection
- playback-unavailable
