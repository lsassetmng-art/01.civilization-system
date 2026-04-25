# ============================================================
# STREAMING APP LEDGER EXTENDED
# ============================================================

status: extended-ledger
scope: Streaming application inventory
owner: Boss
prepared_by: Zero

## 1. Roadmap

1. Fix current Streaming application inventory
2. Expand the ledger to operational use
3. Keep unknown commercial fields explicitly undecided

## 2. Current Position

The current fixed Streaming application scope in this ledger is:
- StreamWatch
- StreamStudio

## 3. Completion Conditions

This ledger is considered usable when it shows:
- app list
- category placement
- role and target user
- design root and integrated reference
- schema and platform policy
- monetization expression at the current fixed level

## 4. Category Fixed Values

| Field | Value |
|---|---|
| Category | 06.streaming-app |
| Design Root | `~/01.civilization-system/07.applications/06.streaming-app` |
| Primary Schema | `streaming` |
| Platforms | iPhone / Android / PC / Tablet |
| Language Policy | Multilingual |
| Currency Policy | Multi-currency |
| Update Rule | Additive only |

## 5. Streaming App Ledger

| App Key | App Name | Role Type | Primary User | Canonical Product Position | Main Capability Group | Commerce Surface | Current Status | Schema | Design Root | Integrated Reference |
|---|---|---|---|---|---|---|---|---|---|---|
| streaming-app-001 | StreamWatch | Viewer app | Viewer | Official viewer-front application of StreamingOS | discovery / watch / resume / following / library / entitlement-aware playback / TV handoff | purchase / rental / membership join can start from app surface; pricing and billing truth stay in shared commerce logic | integrated design fixed | streaming | `~/01.civilization-system/07.applications/06.streaming-app/StreamWatch` | `00_STREAMWATCH_INTEGRATED.md` |
| streaming-app-002 | StreamStudio | Creator operations app | Creator / operator / team member | Official creator production, publishing, commerce, and membership operations application for StreamingOS | project / upload / draft / subtitle / review / publish / marketplace listing / revenue split prep / membership management | creator-side commerce setup and membership operations surface; final commerce truth remains platform-side | pre-implementation design fixed scope with implementation-readiness material present | streaming | `~/01.civilization-system/07.applications/06.streaming-app/StreamStudio` | `00_STREAM_STUDIO_INTEGRATED.md` |

## 6. App Detail Notes

### 6.1 StreamWatch

Fixed interpretation:
- official viewer-front application
- structured discovery viewer rather than flat-feed-only viewer
- continuity-first viewer
- profile-aware viewer
- TV-ready viewer with route handoff behavior
- commerce-capable watch surface

Fixed navigation centers:
- Home
- Category
- Search
- Library
- Following

Important library semantics:
- Favorites
- Watch Later
- History
- Playlists
- Purchased / Entitled section

Commerce boundary:
- purchase, rental, and membership join may start in StreamWatch
- payment success alone does not mean directly playable
- watchability must be re-evaluated from entitlement-aware StreamingOS state

Integrated source note:
- root integrated reference is `00_STREAMWATCH_INTEGRATED.md`

### 6.2 StreamStudio

Fixed interpretation:
- official creator production and publishing operations surface
- creator operations cockpit
- creator commerce operations cockpit
- membership management application
- revenue split preparation and governance surface

Main operational areas:
- creator project management
- project member management
- upload intake and queue
- draft asset and metadata handling
- subtitle and review workflow
- approval and publish setting workflow
- marketplace listing workflow
- membership program / tier / benefit management
- revenue split preparation

Implementation-readiness evidence present in current integrated package:
- screen exact files
- API exact files
- integration and policy files
- implementation readiness and phase-1 work packages
- phase-1 SQL design and verification bundle

Integrated source note:
- root integrated reference is `00_STREAM_STUDIO_INTEGRATED.md`

## 7. Monetization Note

Pricing is not fixed in the currently reviewed Streaming application source set.
This ledger therefore records monetization surfaces and business roles,
but leaves exact app pricing as `undecided` until a separate pricing ledger
or policy file canonically fixes it.

## 8. Next Additive Expansion Candidates

When needed, this ledger can be extended with the following columns without rewriting existing rows:
- implementation repository path
- release phase
- trial policy
- billing plan names
- integrated design timestamp
- common component dependency note
- CX22073 candidate data area linkage

