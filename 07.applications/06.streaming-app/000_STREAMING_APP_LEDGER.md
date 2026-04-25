# ============================================================
# STREAMING APP LEDGER
# ============================================================

status: draft-ledger
scope: Streaming applications
owner: Boss
prepared_by: Zero

## 1. Summary

Current fixed Streaming application scope in this ledger:
- StreamWatch
- StreamStudio

This ledger is the category-level application inventory for the current Streaming app group.
Additional Streaming applications may be added later by additive update.

## 2. Fixed Category

- category: 06.streaming-app
- design_root: ~/01.civilization-system/07.applications/06.streaming-app
- primary_schema: streaming
- platforms: iPhone / Android / PC / Tablet
- language_policy: multilingual
- currency_policy: multi-currency
- note: app-level pricing policy is not fixed in the reviewed source set

## 3. Application Ledger

| App Key | App Name | Main Role | Primary User | Core Summary | Monetization Surface | Platforms | Schema | Current Status | Design Path |
|---|---|---|---|---|---|---|---|---|---|
| streaming-app-001 | StreamWatch | Viewer app | Viewer | Official viewer-front app for discovery, live/archive watch, resume, follow, library, and TV handoff | Purchase / rental / membership join entry supported, but pricing and entitlement truth stay in shared commerce / StreamingOS logic | iPhone / Android / PC / Tablet | streaming | implementation-ready design fixed | ~/01.civilization-system/07.applications/06.streaming-app/StreamWatch |
| streaming-app-002 | StreamStudio | Creator operations app | Creator / operator / team member | Creator production, publishing, commerce, revenue split preparation, and membership management cockpit | Free publication / paid video / membership-only / member-early-access then public release | iPhone / Android / PC / Tablet | streaming | pre-implementation design fixed scope available | ~/01.civilization-system/07.applications/06.streaming-app/StreamStudio |

## 4. Short Notes Per App

### 4.1 StreamWatch
- viewer-side official StreamingOS application
- structured discovery rather than flat-feed-only viewing
- profile-aware continuity and resume handling
- favorites / watch later / history / playlists / queue are separated concepts
- commerce-capable watch journey with entitlement-aware playback resolution

### 4.2 StreamStudio
- creator-side production and publishing application
- handles upload, metadata, thumbnail, subtitle, review, approval, collaboration, publication
- supports creator commerce settings and membership program management
- supports revenue split preparation and Civilization marketplace listing linkage
- phase-based implementation design materials already exist

## 5. Ledger Update Rule

When a new Streaming application is added:
1. append a new app key
2. keep category as 06.streaming-app unless the category structure changes canonically
3. update the summary count
4. do not rewrite existing rows destructively

