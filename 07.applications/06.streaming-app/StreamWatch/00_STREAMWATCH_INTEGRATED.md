# ============================================================
# STREAMWATCH INTEGRATED
# ============================================================

status: integrated-canonical
system: StreamingOS
app: StreamWatch
owner: Boss
prepared_by: Zero
language: English

## 1. Integrated Definition

StreamWatch is the official StreamingOS viewer application that turns playback, discovery, continuity, entitlement, and TV handoff into a unified viewer-facing product.

## 2. Integrated Architecture Summary

The integrated StreamWatch design is built on the following fixed decisions:

- viewer continuity is profile-based
- category browsing is tree-based
- favorites and watch later are semantically separate from history and queue
- purchase, rental, and membership may be initiated from both Civilization and StreamingOS surfaces
- entitlement, playback eligibility, and archive availability remain StreamingOS-canonical
- route handoff and HDMI mode are separate concerns

## 3. Interface Summary

The mobile primary navigation is:

- Home
- Category
- Search
- Library
- Following

The library surface contains:

- Favorites
- Watch Later
- History
- Playlists
- Purchased / Entitled section

The key app-specific additional screens are:

- profile_picker
- viewer_series_detail
- viewer_library_home
- tv_connect_sheet
- restriction_gate
