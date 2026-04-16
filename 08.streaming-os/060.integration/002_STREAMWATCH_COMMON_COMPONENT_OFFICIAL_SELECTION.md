# ============================================================
# STREAMWATCH COMMON COMPONENT OFFICIAL SELECTION
# ============================================================

status: official-selection
layer: integration
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document records the first official selection pass
for StreamWatch-origin common component candidates.

This is not yet the final shared-component promotion output.
It is the formal narrowing step that determines which candidates
are ready to move into promotion design.

## 2. Selection Input

This selection is based on:

- 000_STREAMWATCH_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
- 001_STREAMWATCH_COMMON_COMPONENT_REVIEW_MATRIX.md

## 3. Selected for Promotion Design

The following candidates are selected for the first promotion-design pass:

- CategoryTreeNavigatorCommon
- VideoPlaybackShellCommon
- ContinueWatchingStripCommon
- TvHandoffAndCastCommon
- SavedListAndWatchLaterCommon
- ProfileRestrictionGateCommon

## 4. Selection Notes

### 4.1 CategoryTreeNavigatorCommon
selection: selected
reason:
- high reuse across viewer and non-viewer tree navigation cases
- stable structure contract
- clear separation from StreamWatch-specific screen composition

### 4.2 VideoPlaybackShellCommon
selection: selected
reason:
- strongest reusable playback-shell candidate
- reusable across live, archive, and clip surfaces
- promotion should remain shell-contract-first, not player-engine-first

### 4.3 ContinueWatchingStripCommon
selection: selected
reason:
- continuity strip behavior is broadly reusable
- contract is stable and not strongly tied to StreamWatch layout wording

### 4.4 TvHandoffAndCastCommon
selection: selected
reason:
- route discovery and handoff interaction are reusable beyond StreamWatch
- device-common value is high
- separation between route handoff and same-device mode is already explicit

### 4.5 SavedListAndWatchLaterCommon
selection: selected
reason:
- user-facing saved-list behavior is reusable
- backend implementation can remain abstract
- reusable for favorites, watch later, and protected system lists

### 4.6 ProfileRestrictionGateCommon
selection: selected
reason:
- reusable policy/gate family across restricted viewer experiences
- contract can remain minimal without premature guardian override logic

## 5. Deferred from This Selection Pass

The following candidates are intentionally not moved into the first promotion-design pass:

- PurchaseEntitlementCtaSwitcherCommon
- SeriesPlaylistContinuityCommon

### Deferred reasons

#### PurchaseEntitlementCtaSwitcherCommon
decision: deferred
reason:
- strong candidate
- but should remain one step below promotion until commerce-boundary reuse is validated further

#### SeriesPlaylistContinuityCommon
decision: deferred
reason:
- useful logic family
- but should be validated by at least one additional consumer before promotion design

## 6. Next Promotion-Design Targets

Create formal promotion-design documents for:

- CategoryTreeNavigatorCommon
- VideoPlaybackShellCommon
- ContinueWatchingStripCommon
- TvHandoffAndCastCommon
- SavedListAndWatchLaterCommon
- ProfileRestrictionGateCommon

Recommended next order:

1. CategoryTreeNavigatorCommon
2. VideoPlaybackShellCommon
3. ContinueWatchingStripCommon
4. TvHandoffAndCastCommon
5. SavedListAndWatchLaterCommon
6. ProfileRestrictionGateCommon

## 7. Final Note

This file is the official first-pass selection result
for StreamWatch-origin promotion candidates.

No candidate is promoted yet,
but the selected set is now fixed for promotion-design work.
