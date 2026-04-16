# ============================================================
# STREAMWATCH SCOPE AND BOUNDARY
# ============================================================

status: canonical-draft
layer: constitution
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document fixes what StreamWatch includes, what it excludes, and where the application boundary must remain stable.

## 2. In-Scope Responsibilities

StreamWatch includes:

- viewer home and discovery surfaces
- category-tree browsing
- search and result entry
- live watch, archive watch, clip watch, and video watch entry
- library behavior including favorites, watch later, history, playlists, and following
- series detail and continuity surfaces
- profile-aware viewing behavior
- restriction gate UX
- purchase, rental, and membership execution surfaces
- entitlement-aware CTA switching
- TV route handoff and large-screen viewing entry
- comment and report viewer entry points
- follow and notification viewer behavior

## 3. Out-of-Scope Responsibilities

StreamWatch excludes:

- creator editing
- upload intake
- publication approval workflow
- content operations console behavior
- creator collaboration operations
- revenue split administration
- billing ledger ownership
- refund ownership
- direct binary file delivery ownership
- DRM control ownership

## 4. Upstream Dependencies

StreamWatch depends on upstream systems for:

- content preparation
- content publication state
- pricing and catalog setup
- commerce contract setup
- membership product setup
- entitlement grant result
- notification framework availability

## 5. Downstream Effect Zone

StreamWatch drives or influences the following operational outcomes:

- playback entry
- progress capture
- history creation
- follow state changes
- watch-later and favorites mutations
- TV handoff initiation
- viewer comment entry
- viewer report entry
- commerce execution requests
- entitlement refresh after commercial success

## 6. Boundary Rule for Commerce

Purchase, rental, and membership may be executed from StreamWatch.
However, StreamWatch is an execution surface, not a separate commerce truth owner.

## 7. Boundary Rule for Entitlement

Entitlement, playback eligibility, and archive availability remain StreamingOS-canonical even when the commercial flow starts outside StreamWatch.

## 8. Boundary Rule for Continuity

Continuity is resolved using viewer_profile as the minimum meaningful unit.
Raw account identity alone is not sufficient for viewer continuity behavior.

## 9. Freeze Rule

All later expansion of StreamWatch must remain additive and must not blur the boundary between:

- viewer product
- creator product
- commerce truth
- entitlement truth
