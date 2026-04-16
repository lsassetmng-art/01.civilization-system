# ============================================================
# STREAMWATCH COMMON COMPONENT PROMOTION CANDIDATES
# ============================================================

status: candidate-ledger
layer: integration
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the common component promotion candidates discovered during the implementation-ready design of StreamWatch.

## 2. Candidate Ledger

### SW-COMP-001 CategoryTreeNavigatorCommon
- reuse_scope: application-common / viewer-common
- promotion_priority: highest

### SW-COMP-002 VideoPlaybackShellCommon
- reuse_scope: streaming-common / viewer-common
- promotion_priority: highest

### SW-COMP-003 ContinueWatchingStripCommon
- reuse_scope: application-common / viewer-common
- promotion_priority: high

### SW-COMP-004 SavedListAndWatchLaterCommon
- reuse_scope: application-common / viewer-common
- promotion_priority: high

### SW-COMP-005 TvHandoffAndCastCommon
- reuse_scope: device-common / viewer-common
- promotion_priority: high

### SW-COMP-006 ProfileRestrictionGateCommon
- reuse_scope: policy-common / viewer-common
- promotion_priority: medium-high

### SW-COMP-007 PurchaseEntitlementCtaSwitcherCommon
- reuse_scope: application-common / viewer-common / policy-common
- promotion_priority: medium-high

### SW-COMP-008 SeriesPlaylistContinuityCommon
- reuse_scope: streaming-common / viewer-common
- promotion_priority: medium

## 3. Recommended Promotion Order

1. CategoryTreeNavigatorCommon
2. VideoPlaybackShellCommon
3. ContinueWatchingStripCommon
4. TvHandoffAndCastCommon
5. SavedListAndWatchLaterCommon
6. ProfileRestrictionGateCommon
7. PurchaseEntitlementCtaSwitcherCommon
8. SeriesPlaylistContinuityCommon
