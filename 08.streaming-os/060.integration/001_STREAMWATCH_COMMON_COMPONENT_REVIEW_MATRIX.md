# ============================================================
# STREAMWATCH COMMON COMPONENT REVIEW MATRIX
# ============================================================

status: review-matrix
layer: integration
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document reviews the StreamWatch-origin promotion candidates
and prepares them for formal shared-component selection.

This is not the final promotion decision.
It is the evaluation layer before official selection.

## 2. Review Columns

Each candidate is reviewed by:

- reuse_strength
- contract_stability
- ownership_clarity
- cross_app_readiness
- review_comment
- next_action

Allowed values:

- reuse_strength: high / medium / low
- contract_stability: high / medium / low
- ownership_clarity: clear / partial / unclear
- cross_app_readiness: ready / near-ready / later
- next_action: shortlist / hold / split / merge-review

## 3. Review Matrix

### 3.1 Highest / High Priority Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| CategoryTreeNavigatorCommon | high | high | clear | ready | strong reusable structured navigation family beyond streaming | shortlist |
| VideoPlaybackShellCommon | high | medium | partial | near-ready | very strong candidate, but playback shell contract should stay engine-agnostic | shortlist |
| ContinueWatchingStripCommon | high | high | clear | ready | highly reusable continuity display family across viewer apps | shortlist |
| TvHandoffAndCastCommon | high | medium | partial | near-ready | strong device/common candidate, but route vs same-device mode split must stay explicit | shortlist |
| SavedListAndWatchLaterCommon | high | medium | partial | near-ready | reusable saved-list behavior family, but backend-agnostic contract should be confirmed | shortlist |
| ProfileRestrictionGateCommon | high | medium | partial | near-ready | useful policy/common gate family, but restriction taxonomy should stay minimal for now | shortlist |

### 3.2 Medium / Observation Candidates

| candidate | reuse_strength | contract_stability | ownership_clarity | cross_app_readiness | review_comment | next_action |
|---|---|---|---|---|---|---|
| PurchaseEntitlementCtaSwitcherCommon | high | medium | partial | near-ready | strong CTA decision family, but commerce boundary should remain decision-only | hold |
| SeriesPlaylistContinuityCommon | medium | medium | partial | later | useful continuity logic candidate, but should be validated by another consumer first | merge-review |

## 4. Initial Shortlist Recommendation

### shortlist_now
- CategoryTreeNavigatorCommon
- VideoPlaybackShellCommon
- ContinueWatchingStripCommon
- TvHandoffAndCastCommon
- SavedListAndWatchLaterCommon
- ProfileRestrictionGateCommon

### hold_for_next_validation
- PurchaseEntitlementCtaSwitcherCommon
- SeriesPlaylistContinuityCommon

## 5. Recommended Next Step

Create:

- 002_STREAMWATCH_COMMON_COMPONENT_OFFICIAL_SELECTION.md

and move only:
- shortlist_now

into the first official selection pass.

## 6. Final Note

This matrix is a review layer only.
No candidate is officially promoted yet.
