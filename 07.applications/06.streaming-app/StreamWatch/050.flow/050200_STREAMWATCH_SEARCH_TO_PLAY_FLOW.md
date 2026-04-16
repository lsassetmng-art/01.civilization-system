# ============================================================
# STREAMWATCH SEARCH TO PLAY FLOW
# ============================================================

status: canonical-draft
layer: flow
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the search-driven path from query input to playback entry.

## 2. Search Tabs

The search result domain must support:

- all
- videos
- live
- clips
- series
- playlists
- channels
- creators

## 3. Flow Steps

### Step 1
Viewer opens search.

### Step 2
Viewer enters a query or selects a recent / suggested search.

### Step 3
System resolves result set and tab group.

### Step 4
Viewer may filter or sort:
- relevance
- newest
- popular
- live_now

### Step 5
Viewer selects a result item.

### Step 6
System resolves destination by target type:
- video or archive -> player or detail
- live -> waiting room or live player
- series -> series detail
- playlist -> playlist detail
- channel or creator -> channel / creator page

### Step 7
System resolves watchability before direct play.

## 4. Important Rules

- search is not limited to watchable items only
- locked items may appear but must show correct CTA state
- series and playlists must not be flattened into generic video cards
