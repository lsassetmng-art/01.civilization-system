# ============================================================
# PERSONA OS ARCHIVE INVENTORY AUDIT REPORT
# ============================================================

status: completed
system: PersonaOS
generated_at: 20260420_053036

scope:
- audit PersonaOS 999.archive
- classify archive files into evidence_keep / duplicate_candidate / review_required
- no files moved
- no files deleted

latest_relevant_dirs:
- latest_920: none
- latest_930: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/999.archive/930.root_direct_apply_and_rehome_20260420_042416

summary:
- archive_top_dir_count: 103
- archive_file_count: 4126
- evidence_keep_count: 0
- duplicate_candidate_count: 61
- review_required_count: 4065

artifacts:
- latest_dirs_txt: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/121.archive_inventory_audit_20260420_053036/000001_PERSONA_OS_ARCHIVE_LATEST_RELEVANT_DIRS_20260420_053036.txt
- dir_inventory_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/121.archive_inventory_audit_20260420_053036/000002_PERSONA_OS_ARCHIVE_DIR_INVENTORY_20260420_053036.tsv
- file_disposition_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/121.archive_inventory_audit_20260420_053036/000003_PERSONA_OS_ARCHIVE_FILE_DISPOSITION_20260420_053036.tsv
- tree_txt: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/121.archive_inventory_audit_20260420_053036/000004_PERSONA_OS_ARCHIVE_TREE_TOPLEVEL_20260420_053036.txt

reading_rule:
- evidence_keep = keep as audit or decision evidence
- duplicate_candidate = candidate for later dedup review, not auto-delete
- review_required = archived safely, may be compacted later after explicit review
