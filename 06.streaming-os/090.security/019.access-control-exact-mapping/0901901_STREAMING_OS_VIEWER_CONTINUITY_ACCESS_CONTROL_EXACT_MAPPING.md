# ============================================================
# STREAMING OS VIEWER CONTINUITY ACCESS CONTROL EXACT MAPPING
# ============================================================

status: canonical-draft
system: streaming-os
domain: access-control-exact-mapping
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCOPE
# ============================================================

This mapping covers:
- search history
- watch history
- follow/subscription state
- playlists
- watch queues
- viewer feed state

# ============================================================
# 2. READ RULES
# ============================================================

viewer_search_history_read:
- allowed:
  - same viewer_subject_id
  - platform operator only for explicit support or abuse investigation paths
- denied:
  - other viewers
  - creators by default

viewer_watch_history_read:
- allowed:
  - same viewer_subject_id
  - platform operator only for explicit support or abuse investigation paths
- denied:
  - other viewers
  - creators by default

playlist_read:
- allowed:
  - owner_subject_id
  - other viewers only when playlist_visibility permits
  - platform operator with explicit support authority
- denied:
  - others for private playlists

watch_queue_read:
- allowed:
  - same viewer_subject_id
  - platform operator only for explicit support paths
- denied:
  - all others

follow_state_read:
- allowed:
  - same viewer_subject_id
  - public surfaces may expose derived follow count summaries only,
    not full owner-bound follow records by default
- denied:
  - arbitrary full-state reads by other viewers

# ============================================================
# 3. WRITE RULES
# ============================================================

search_history_write:
- allowed:
  - same viewer_subject_id
  - system runtime worker
- denied:
  - all others

watch_history_write:
- allowed:
  - same viewer_subject_id through watch progression
  - system runtime worker
- denied:
  - all others

follow_state_write:
- allowed:
  - same viewer_subject_id
  - system runtime worker for consistency repair only
- denied:
  - followed target owner by default
  - arbitrary viewers

playlist_write:
- allowed:
  - owner_subject_id
  - delegated collaborator only if future collaboration policy is explicitly added
- denied:
  - arbitrary viewers

watch_queue_write:
- allowed:
  - same viewer_subject_id
  - system runtime worker for repair/reorder correction only
- denied:
  - all others

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Viewer continuity access control
shall be self-owned by default,
with public exposure limited to explicitly public derivatives
rather than raw owner-bound records.

