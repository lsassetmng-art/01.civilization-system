# ============================================================
# STATIC ART OS INDEX / OVERVIEW REPAIR REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

root: /data/data/com.termux/files/home/01.civilization-system/10.staticart-os

## Root repair result

| Item | Created |
|---|---|
| root_index | 0 |
| root_overview | 0 |

## Top-level folder repair result

| Folder | INDEX Created | OVERVIEW Created | INDEX File | OVERVIEW File |
|---|---|---|---|---|
| 000.index | NO | NO | - | - |
| 010.constitution | NO | NO | - | - |
| 010.overview | YES | NO | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/010.overview/010_INDEX.md | - |
| 020.architecture | NO | NO | - | - |
| 040.runtime | NO | NO | - | - |
| 050.flow | NO | NO | - | - |
| 060.integration | NO | NO | - | - |
| 060.reference-integration | YES | YES | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_INDEX.md | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/060.reference-integration/060_OVERVIEW.md |
| 070.operations | NO | NO | - | - |
| 080.policy | NO | NO | - | - |
| 100.security | NO | NO | - | - |
| 110.infrastructure | NO | NO | - | - |
| 120.exactness | YES | YES | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_INDEX.md | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/120.exactness/120_OVERVIEW.md |
| 120.implementation | NO | NO | - | - |
| 121.db-implementation-prep | NO | YES | - | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/121.db-implementation-prep/121_OVERVIEW.md |
| 122.api-implementation-prep | NO | YES | - | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/122.api-implementation-prep/122_OVERVIEW.md |
| 123.ui-implementation-prep | NO | YES | - | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/123.ui-implementation-prep/123_OVERVIEW.md |
| 124.test-implementation-prep | NO | YES | - | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/124.test-implementation-prep/124_OVERVIEW.md |
| 130.development | NO | NO | - | - |
| 131.implementation-roadmap | YES | YES | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_INDEX.md | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/131.implementation-roadmap/131_OVERVIEW.md |
| 132.operations | NO | YES | - | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/132.operations/132_OVERVIEW.md |
| 999.summary | YES | YES | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_INDEX.md | /data/data/com.termux/files/home/01.civilization-system/10.staticart-os/999.summary/999_OVERVIEW.md |

## Summary

| Metric | Value |
|---|---|
| created_root_index | 0 |
| created_root_overview | 0 |
| created_directory_index | 5 |
| created_directory_overview | 9 |
| skipped_existing_index | 18 |
| skipped_existing_overview | 14 |

## Rule

- Existing files were not overwritten.
- Missing INDEX / OVERVIEW only were repaired.
- This is a structure repair, not a semantic rewrite.
