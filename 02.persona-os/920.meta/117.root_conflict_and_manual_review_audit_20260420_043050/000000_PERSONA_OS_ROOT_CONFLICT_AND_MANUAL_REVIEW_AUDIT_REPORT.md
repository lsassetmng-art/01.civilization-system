# ============================================================
# PERSONA OS ROOT CONFLICT AND MANUAL REVIEW AUDIT REPORT
# ============================================================

status: completed
system: PersonaOS

inputs:
- latest_archive: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/999.archive/930.root_direct_apply_and_rehome_20260420_042416
- latest_meta: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416
- conflict_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000005_PERSONA_OS_ROOT_DIRECT_REHOME_CONFLICT_20260420_042416.txt
- manual_list: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/116.root_direct_apply_and_rehome_20260420_042416/000006_PERSONA_OS_ROOT_DIRECT_MANUAL_REVIEW_20260420_042416.txt

summary:
- identical_conflict_count: 0
- different_conflict_count: 9
- missing_conflict_path_count: 0
- manual_candidate_count: 1498

artifacts:
- report: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050/000000_PERSONA_OS_ROOT_CONFLICT_AND_MANUAL_REVIEW_AUDIT_REPORT.md
- conflict_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050/000001_PERSONA_OS_ROOT_CONFLICT_COMPARE.tsv
- manual_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050/000002_PERSONA_OS_ROOT_MANUAL_REVIEW_CANDIDATES.tsv
- diff_dir: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050/000010_conflict_diffs

reading_rule:
- identical = archived stray copy is unnecessary as active content
- different = manual merge or target replacement decision required
- manual review candidates = destination needs explicit judgment
