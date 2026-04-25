# ============================================================
# PERSONA OS ROOT CONFLICT PRECISE DECISION REPORT
# ============================================================

status: completed
system: PersonaOS
generated_at: 20260420_050044

inputs:
- latest_audit_dir: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050
- latest_rehome_archive: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/999.archive/930.root_direct_apply_and_rehome_20260420_042416
- conflict_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/117.root_conflict_and_manual_review_audit_20260420_043050/000001_PERSONA_OS_ROOT_CONFLICT_COMPARE.tsv

purpose:
Create a precise decision pack for remaining root normalization conflicts.

summary:
- different_conflict_count_processed: 9
- focused_manual_candidate_count: 11

decision_rule:
- different_conflict files require manual keep/merge/replace decision
- manual review file requires narrowed placement decision
- no file moved by this pack

artifacts:
- report: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/118.root_conflict_precise_decision_pack_20260420_050044/000000_PERSONA_OS_ROOT_CONFLICT_PRECISE_DECISION_REPORT_20260420_050044.md
- conflict_summary_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/118.root_conflict_precise_decision_pack_20260420_050044/000001_PERSONA_OS_ROOT_CONFLICT_PRECISE_SUMMARY_20260420_050044.tsv
- manual_focused_tsv: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/118.root_conflict_precise_decision_pack_20260420_050044/000002_PERSONA_OS_ROOT_MANUAL_FOCUSED_CANDIDATES_20260420_050044.tsv
- conflict_head_dir: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/118.root_conflict_precise_decision_pack_20260420_050044/000010_conflict_heads
- conflict_diff_head_dir: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/920.meta/118.root_conflict_precise_decision_pack_20260420_050044/000020_conflict_diff_heads
