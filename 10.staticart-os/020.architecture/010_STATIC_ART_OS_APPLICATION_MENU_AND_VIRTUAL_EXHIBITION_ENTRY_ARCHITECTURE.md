# STATIC ART OS APPLICATION MENU AND VIRTUAL EXHIBITION ENTRY ARCHITECTURE

status: design-review-ready
layer: architecture
system: StaticArtOS
owner: Boss

## 1. Purpose

Define the canonical StaticArtOS primary menu and the Virtual Exhibitions entry boundary.

## 2. Primary menu

The primary menu order is fixed:

1. Marketplace
2. Virtual Exhibitions
3. My Library
4. Works Management
5. Review Management

Logical route keys are:

- marketplace
- virtual_exhibitions
- my_library
- works_management
- review_management

Physical URLs are resolved by the application route adapter. This design does not replace existing route contracts.

## 3. Ownership

- Marketplace, My Library, Works Management, and Review Management remain StaticArtOS surfaces.
- Virtual Exhibitions is a StaticArtOS entry surface into the CivilizationOS Exhibition Builder.
- StaticArtOS owns static artwork, publication, creator, version, rights, and exhibition eligibility truth.
- StaticArtOS must not own venue, layout, exhibition funding, company treasury, sponsorship settlement, or exhibition pricing truth.

## 4. Entry handoff

The handoff must carry:

- authenticated actor context
- selected StaticArtOS canonical asset references when present
- locale
- return route
- correlation ID
- idempotency key

It must not copy finance or venue canonical records into StaticArtOS.

## 5. Asset projection

Static artwork and publication selection reuses:

- 000_STATIC_ART_EXHIBITION_BUILDER_INTEGRATION_CONTRACT.md

One billable exhibit is one canonical asset_id, independent of file count or version file count.

## 6. UI states

The Virtual Exhibitions entry must define:

- loading
- empty
- ready
- forbidden
- unavailable
- handoff-failed

Forbidden and unavailable states must explain the blocking reason and the next valid action.

## 7. Final rule

StaticArtOS provides discovery, selection, and return navigation.

CivilizationOS remains the only writer of exhibition, venue, funding, price snapshot, approval, and schedule records.
