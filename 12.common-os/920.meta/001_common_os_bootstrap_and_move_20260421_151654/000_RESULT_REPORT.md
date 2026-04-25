# ============================================================
# COMMON OS BOOTSTRAP AND MOVE REPORT
# ============================================================

status: completed
owner: Boss
prepared_by: Zero
generated_at: 20260421_151654

## PURPOSE
Create 12.common-os under 01.civilization-system,
mirror the direct child folder structure of 01.civilization-os,
and move the contents of 07.applications/00.application-common-components
into the appropriate folders under 12.common-os.

## PATHS
- reference_os: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os
- source_dir: /data/data/com.termux/files/home/01.civilization-system/07.applications/00.application-common-components
- destination_dir: /data/data/com.termux/files/home/01.civilization-system/12.common-os
- run_dir: /data/data/com.termux/files/home/01.civilization-system/12.common-os/920.meta/001_common_os_bootstrap_and_move_20260421_151654
- move_map: /data/data/com.termux/files/home/01.civilization-system/12.common-os/920.meta/001_common_os_bootstrap_and_move_20260421_151654/001_MOVE_MAP.tsv

## ROUTING RULE
- index / overview -> common-os root
- sql / sql notes -> 120.implementation
- ddl / table plan -> 030.model
- ledger -> 060.integration
- canonical / foundation / official / other markdown -> 020.architecture
- unclassified non-md -> 920.meta/999_unclassified_from_legacy_workspace

## RESULT
- moved_file_count: 78

## NOTE
This run moved contents only.
It did not destroy the overall system structure.
