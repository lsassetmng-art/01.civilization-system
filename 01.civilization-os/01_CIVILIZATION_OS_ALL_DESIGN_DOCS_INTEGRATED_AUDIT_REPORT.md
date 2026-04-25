# ============================================================
# CIVILIZATION OS ALL DESIGN DOCS INTEGRATED AUDIT REPORT
# ============================================================

status: regenerated-audit
system: CivilizationOS
scope: all design markdown integrated regeneration
owner: Boss
prepared_by: Zero
generated_at: 2026-04-19 18:24:40 +0900

outputs:
- master_md: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_ALL_DESIGN_DOCS_INTEGRATED_MASTER.md
- manifest_txt: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_ALL_DESIGN_DOCS_SOURCE_MANIFEST.txt
- audit_md: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/01_CIVILIZATION_OS_ALL_DESIGN_DOCS_INTEGRATED_AUDIT_REPORT.md

rules_applied:
- markdown files only
- source root is full 01.civilization-os
- current regenerated outputs excluded
- existing *INTEGRATED*.md outputs excluded
- *_AUDIT_REPORT.md outputs excluded

## COUNTS

- source_file_count: 13650
- begin_marker_count: 13650
- end_marker_count: 13650

## KEY PRESENCE CHECK

- has_120_implementation_docs: 1641
- has_pack_780_docs: 5
- has_pack_790_docs: 5
- has_pack_800_docs: 5

## VALIDATION

- begin_end_marker_balance: yes
- source_vs_begin_balance: yes
- source_vs_end_balance: yes
- master_exists: yes
- manifest_exists: yes
- audit_exists: no

## FINAL RESULT

- audit_status: all_design_docs_integrated_regeneration_incomplete
