# ============================================================
# CivilizationSystem Full Push Move Large Files Report
# ============================================================

status: generated
generated_at: 20260425_192137
repo_root: /data/data/com.termux/files/home/01.civilization-system
branch: main
backup_branch: backup/civilization-before-move-large-push-20260425_192137
base_ref: @{u}

## Result

PUSH_DONE

## Policy

100MB超ファイルを /data/data/com.termux/files/home/.tmp に退避してから CivilizationSystem 全体を push した。

## Moved Large Files

moved_list:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_192137_civilization_full_push_move_large_files/020_moved_large_files.txt

move_root:
- /data/data/com.termux/files/home/.tmp/civilization_large_files_20260425_192137

## Evidence

main_log:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_192137_civilization_full_push_move_large_files/010_full_push_move_large_files.log

staged_files:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_192137_civilization_full_push_move_large_files/040_staged_files.txt

remaining_large_files_check:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_192137_civilization_full_push_move_large_files/030_remaining_large_files.txt

## Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED
