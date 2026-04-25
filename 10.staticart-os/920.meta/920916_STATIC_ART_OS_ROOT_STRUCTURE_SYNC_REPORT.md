# ============================================================
# STATIC ART OS ROOT STRUCTURE SYNC REPORT
# ============================================================

status: generated
system: StaticArtOS
canonical_source_system: CivilizationOS
prepared_by: Zero
mode: audit
phase: audit

paths:
- civilization_root: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os
- staticart_root: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os

summary:
| Metric | Value |
|---|---:|
| civilization_root_dir_count | 18 |
| staticart_root_dir_count | 23 |
| common_root_dir_count | 12 |
| missing_in_staticart_count | 6 |
| extra_in_staticart_count | 11 |

artifacts:
- civilization_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920910_CIVILIZATION_OS_ROOT_DIRS.txt
- staticart_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920911_STATIC_ART_OS_ROOT_DIRS.txt
- common_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920912_STATIC_ART_OS_COMMON_ROOT_DIRS.txt
- missing_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920913_STATIC_ART_OS_MISSING_ROOT_DIRS.txt
- extra_root_dirs: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920914_STATIC_ART_OS_EXTRA_ROOT_DIRS.txt
- mapping_tsv: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920915_STATIC_ART_OS_ROOT_DIR_MAPPING.tsv
- report_md: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920916_STATIC_ART_OS_ROOT_STRUCTURE_SYNC_REPORT.md

notes:
- Canonical direct root directory structure is taken from CivilizationOS.
- Edit /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/920.meta/920915_STATIC_ART_OS_ROOT_DIR_MAPPING.tsv to resolve every REVIEW_REQUIRED row.
- Allowed actions for apply:
  - KEEP
  - CREATE
  - RENAME_TO
  - RETIRE_TO_ARCHIVE
- Do not run MODE=apply until REVIEW_REQUIRED rows are gone.
