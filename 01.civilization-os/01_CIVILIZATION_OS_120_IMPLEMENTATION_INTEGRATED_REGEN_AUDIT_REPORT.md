# ============================================================
# CIVILIZATION OS 120 IMPLEMENTATION INTEGRATED REGEN AUDIT REPORT
# ============================================================

status: regenerated-audit
system: CivilizationOS
scope: markdown-only integrated regeneration
owner: Boss
prepared_by: Zero
generated_at: 2026-04-19 17:23:26 +0900

outputs:
- master_md: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_120_IMPLEMENTATION_INTEGRATED_MASTER.md
- manifest_txt: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_120_IMPLEMENTATION_INTEGRATED_SOURCE_MANIFEST.txt
- audit_md: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_120_IMPLEMENTATION_INTEGRATED_REGEN_AUDIT_REPORT.md

rules_applied:
- markdown files only
- integrated-master source directory excluded
- cross-cutting audit/missing/txt/tsv excluded
- output location fixed to 01.civilization-os root

## COUNTS

- source_file_count: 1530
- begin_marker_count: 1530
- end_marker_count: 1530

## KEY PACK PRESENCE

- pack_780_hits: 6
- pack_790_hits: 6
- pack_800_hits: 6

## VALIDATION

- begin_end_marker_balance: yes
- source_vs_begin_balance: yes
- source_vs_end_balance: yes
- master_exists: yes
- manifest_exists: yes
- audit_exists: yes

## FINAL RESULT

- audit_status: md_integrated_regeneration_complete
