# APPLICATION COMMON COMPONENT CURRENT WAVE IMPLEMENTATION MAPPING

status: canonical
system: CommonOS
layer: implementation

## Purpose
This document maps current-wave accepted component families to implementation priority.

## Priority A: immediate implementation candidates
- Screen Shell Common -> App Shell and shell primitives
- State Panel Common -> State panel / empty / error / loading surfaces
- Action Button Common -> Button family variants
- Multilingual Label Common -> label rendering hooks and locale-safe wrappers
- Multicurrency Price Display Common -> price presentation formatter wrapper
- Review Queue Common -> queue presentation base
- Asset Upload Common -> attachment entry and upload-pending presentation base

## Priority B: next reusable feature layer
- Asset Metadata Editor Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Product Card Common
- Library Shelf Common
- Marketplace Sort Panel Common
- Product Detail Summary Common
- Owned Badge Common
- Subscription Included Badge Common
- Bookmark Common
- Favorite Toggle Common

## Priority C: shared-base utilities subject to packaging split
- canonical response envelope helper
- canonical error envelope helper
- permission guard base
- validator helper set
- idempotency service base
- StaticArtError / error-code base pattern
- lifecycle transition helper base

## Interpretation
Priority A should be implemented first as CommonOS shared outputs.
Priority B should follow after the minimum set stabilizes.
Priority C may require package split between client-safe shared assets and non-client shared libraries.
