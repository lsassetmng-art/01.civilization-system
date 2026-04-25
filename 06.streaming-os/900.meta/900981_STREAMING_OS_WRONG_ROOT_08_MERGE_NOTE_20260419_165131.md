# ============================================================
# STREAMING OS WRONG ROOT 08 MERGE NOTE
# ============================================================

status: canonical-note
system: StreamingOS
owner: Boss
prepared_by: Zero

meaning:
The folder below was treated as a wrong-root StreamingOS location
and its contents were merged into the canonical root.

wrong_root:
- /data/data/com.termux/files/home/01.civilization-system/08.streaming-os

canonical_root:
- /data/data/com.termux/files/home/01.civilization-system/06.streaming-os

merge_policy:
- same-name directories were merged non-destructively
- file collisions were moved with suffix:
  .from_08_20260419_165131
- 08.civilization-portal-site was intentionally untouched

backup:
- /data/data/com.termux/files/home/.tmp/streaming_wrong_root_08_fix_20260419_165131/backup

root_items_moved:
- 1

files_moved:
- 2

conflict_files_renamed:
- 0

directories_created:
- 0
