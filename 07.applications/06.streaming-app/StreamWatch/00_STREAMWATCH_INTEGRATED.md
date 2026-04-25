# ============================================================
# STREAMWATCH INTEGRATED
# ============================================================

status: integrated-canonical
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Integrated Definition

StreamWatch is the official viewer-front application of StreamingOS.
It is the main viewer product for discovering, entering, resuming, and continuing video assets, live streams, archived streams, clips, series, and playlists.

## 2. Core Product Position

StreamWatch is fixed as:

- the primary viewer-facing playback entry of StreamingOS
- a structured-discovery viewer rather than a flat-feed-only viewer
- a continuity-first viewer rather than a one-session player
- a profile-aware viewer suitable for family-style use
- a TV-ready viewer with explicit route handoff behavior
- a commerce-capable viewing surface that can unlock content without breaking the watch journey

## 3. Fixed Navigation Model

### Mobile primary navigation
- Home
- Category
- Search
- Library
- Following

### Library sections
- Favorites
- Watch Later
- History
- Playlists
- Purchased / Entitled section

### TV-oriented navigation
- Home
- Live
- Category
- Library
- Search
- Settings

## 4. Fixed Core Rules

The StreamWatch design is frozen around the following rules:

### 4.1 Viewer continuity unit
Continuity is resolved at the `viewer_profile` unit rather than the raw account unit.

### 4.2 Category discovery model
Category discovery is canonical tree-based rather than flat-filter-based.

### 4.3 Library semantics
Favorites, Watch Later, History, Playlists, and Queue are separate meanings and must not be collapsed into one vague library concept.

### 4.4 Phase-1 storage interpretation
Favorites and Watch Later are implemented in phase 1 as protected playlist interpretations rather than dedicated canonical tables.

### 4.5 Progress versus history
History records watched fact.
Progress records resume truth.
They are separate.

### 4.6 TV behavior split
Real cast/route handoff and same-device HDMI large-screen mode are separate concerns.

### 4.7 Playback unlock model
Commercial success does not directly deliver a file.
Commercial success results in entitlement grant, and watchability is then resolved through StreamingOS.

## 5. Commerce and Entitlement Split

### 5.1 Where commerce may start
Purchase, rental, and membership join may be initiated from:

- Civilization surfaces
- StreamingOS / StreamWatch surfaces

### 5.2 What remains shared
Pricing, transaction truth, billing truth, refund truth, and contract truth remain in shared commerce logic.

### 5.3 What remains StreamingOS-canonical
StreamingOS remains the canonical owner of:

- entitlement truth
- playback eligibility
- archive availability
- playback-aware watchability state

### 5.4 Viewer consequence
The viewer app must never assume:
“payment complete therefore directly playable.”

Instead, StreamWatch must re-evaluate watchability from entitlement-aware StreamingOS state.

## 6. Reused and Added Viewer Surfaces

### 6.1 Reused viewer surfaces
- viewer_home
- viewer_discovery_category
- viewer_search
- viewer_search_results
- viewer_channel_page
- viewer_creator_page
- viewer_waiting_room
- viewer_live_watch
- viewer_archive_watch
- viewer_clip_watch
- viewer_playlist_list
- viewer_playlist_detail
- viewer_watch_queue
- viewer_history
- viewer_following

### 6.2 StreamWatch-specific formal additions
- profile_picker
- viewer_series_detail
- viewer_library_home
- tv_connect_sheet
- restriction_gate

## 7. Phase-1 Additive DDL Freeze

The approved phase-1 additive DDL candidates are:

- streaming.viewer_profile_records
- streaming.viewer_progress_states
- streaming.category_tree_nodes
- streaming.cast_handoff_sessions

Deferred from phase 1:

- dedicated favorites tables
- dedicated watch-later tables
- offline download ownership
- DRM download structures

## 8. Required API Surface

The minimum fixed StreamWatch API surface includes:

- /streamwatch/profile/list
- /streamwatch/profile/select
- /streamwatch/home-feed/read
- /streamwatch/category-tree/read
- /streamwatch/search
- /streamwatch/series/detail/read
- /streamwatch/library/read
- /streamwatch/follow/upsert
- /streamwatch/saved-list/mutate
- /streamwatch/watch-queue/mutate
- /streamwatch/progress/upsert
- /streamwatch/comment/submit
- /streamwatch/report/submit
- /streamwatch/tv-handoff/start
- /streamwatch/tv-handoff/claim
- /streamwatch/notifications/read
- /streamwatch/entitlement/read
- /streamwatch/purchase/quote
- /streamwatch/purchase/execute
- /streamwatch/rental/execute
- /streamwatch/membership/join/execute

## 9. Runtime Focus

The most important runtime domains are:

- playback lifecycle
- progress sync
- live-to-archive transition
- follow and notification runtime
- route handoff runtime
- entitlement refresh after commerce execution

## 10. Strong Shared-Component Candidates

The strongest common-component promotion candidates exposed by StreamWatch are:

1. CategoryTreeNavigatorCommon
2. VideoPlaybackShellCommon
3. ContinueWatchingStripCommon
4. TvHandoffAndCastCommon
5. SavedListAndWatchLaterCommon
6. ProfileRestrictionGateCommon

## 11. Strong CX22073 Candidate Areas

The strongest StreamWatch-side CX22073 candidates are:

- streaming_view_history_area
- streaming_category_tree_area
- streaming_continue_watching_area
- streaming_progress_resume_area
- streaming_entitlement_reference_area

## 12. Final Integrated Statement

StreamWatch is the official StreamingOS viewer-front application that turns structured discovery, entitlement-aware access, profile-based continuity, live/archive viewing, library semantics, and TV-ready playback into one coherent viewer product.

It is implementation-ready because its boundary, navigation, continuity unit, category model, commerce split, entitlement model, TV handoff split, and phase-1 additive scope have all been fixed.
