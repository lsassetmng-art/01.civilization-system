# ============================================================
# STREAMING OS WRONG ROOT 08 SAFE RERUN NOTE
# ============================================================

status: canonical-note
system: StreamingOS
owner: Boss
prepared_by: Zero

meaning:
This note records the safe rerun merge from the wrong StreamingOS root.

wrong_root:
- /data/data/com.termux/files/home/01.civilization-system/08.streaming-os

canonical_root:
- /data/data/com.termux/files/home/01.civilization-system/06.streaming-os

merge_policy:
- only remaining contents under 08.streaming-os were merged
- same-name directories were merged non-destructively
- file collisions were renamed with suffix:
  .from_08_20260419_165347
- 08.civilization-portal-site was intentionally untouched

backup:
- /data/data/com.termux/files/home/.tmp/streaming_wrong_root_08_safe_fix_20260419_165347/backup

root_items_moved:
- 0

files_moved:
- 0

conflict_files_renamed:
- 0

directories_created:
- 0
