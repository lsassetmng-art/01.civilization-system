# ============================================================
# STREAMING OS VIEWER SCREEN INVENTORY AND TRANSITION MAP
# ============================================================

status: canonical-draft
system: streaming-os
domain: screen-inventory-and-transition-map
owner: Boss
prepared_by: Zero

viewer_screens:
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

transitions:
- viewer_home
  -> viewer_discovery_category
  -> viewer_search
  -> viewer_channel_page
  -> viewer_creator_page
  -> viewer_waiting_room
  -> viewer_live_watch
  -> viewer_archive_watch
  -> viewer_clip_watch

- viewer_search
  -> viewer_search_results

- viewer_search_results
  -> viewer_channel_page
  -> viewer_creator_page
  -> viewer_waiting_room
  -> viewer_live_watch
  -> viewer_archive_watch
  -> viewer_clip_watch

- viewer_channel_page
  -> viewer_live_watch
  -> viewer_archive_watch
  -> viewer_clip_watch
  -> viewer_following

- viewer_waiting_room
  -> viewer_live_watch

- viewer_archive_watch
  -> viewer_watch_queue
  -> viewer_playlist_detail
  -> viewer_history

- viewer_clip_watch
  -> viewer_watch_queue
  -> viewer_playlist_detail
  -> viewer_history

- viewer_live_watch
  -> viewer_watch_queue
  -> viewer_history

- viewer_playlist_list
  -> viewer_playlist_detail

primary_entry:
- viewer_home

canonical_statement:
Viewer-side screen flow
shall distinguish:
- home/discovery
- explicit search
- channel/creator viewing
- waiting room
- live watch
- archive watch
- clip watch
- playlist/queue/history/following

