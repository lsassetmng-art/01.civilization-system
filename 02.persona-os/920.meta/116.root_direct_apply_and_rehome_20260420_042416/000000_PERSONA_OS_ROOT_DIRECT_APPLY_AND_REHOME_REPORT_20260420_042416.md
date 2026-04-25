# ============================================================
# PERSONA OS ROOT DIRECT APPLY AND REHOME REPORT
# ============================================================

status: completed
system: PersonaOS
generated_at: 20260420_042416

purpose:
Apply root direct normalization and rehome obvious stray files to correct locations.

root_keep_rule:
- keep only root canonical entry files
- rehome obvious stray files to canonical layer paths
- archive all other root direct files
- send uncertain stray files to manual review bucket

kept_root_files:
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/0000000_PERSONA_OS_INDEX.md
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/000000_PERSONA_OS_CANONICAL_FULL.md
- /data/data/com.termux/files/home/01.civilization-system/02.persona-os/000000_PERSONA_OS_FULL_INTEGRATED_CANONICAL.md

counts:
- before_direct_file_count: 162
- kept_direct_file_count: 3
- rehomed_direct_file_count: 0
- archived_direct_file_count: 149
- rehome_conflict_count: 9
- manual_review_count: 1
- after_direct_file_count: 3

artifacts:
- report: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000000_PERSONA_OS_ROOT_DIRECT_APPLY_AND_REHOME_REPORT_20260420_042416.md
- before_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000001_PERSONA_OS_ROOT_DIRECT_BEFORE_20260420_042416.txt
- kept_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000002_PERSONA_OS_ROOT_DIRECT_KEPT_20260420_042416.txt
- rehomed_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000003_PERSONA_OS_ROOT_DIRECT_REHOMED_20260420_042416.txt
- archived_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000004_PERSONA_OS_ROOT_DIRECT_ARCHIVED_20260420_042416.txt
- conflict_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000005_PERSONA_OS_ROOT_DIRECT_REHOME_CONFLICT_20260420_042416.txt
- review_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000006_PERSONA_OS_ROOT_DIRECT_MANUAL_REVIEW_20260420_042416.txt
- remaining_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000007_PERSONA_OS_ROOT_DIRECT_REMAINING_20260420_042416.txt
- archive_dir: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/999.archive/930.root_direct_apply_and_rehome_20260420_042416

result:
- root direct files normalized
- obvious 030080* stray files rehomed to 030.model/010.canonical/080.knowledge
- unclear stray files moved to manual review
- root reduced to minimal canonical files only if no extra file remained
