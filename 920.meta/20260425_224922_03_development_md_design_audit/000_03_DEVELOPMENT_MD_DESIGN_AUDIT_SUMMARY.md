# ============================================================
# 03.civilization-development MD Design Audit Summary
# ============================================================

status: generated
generated_at: 20260425_224922

## 1. Rule

Design documents belong only under:

- /data/data/com.termux/files/home/01.civilization-system

Implementation artifacts belong under:

- /data/data/com.termux/files/home/03.civilization-development

Therefore, Markdown files under 03.civilization-development should normally be limited to:

- README
- HANDOFF
- RUNBOOK
- setup notes
- test notes
- push handoff
- implementation operation notes

Design-like Markdown files under 03 are suspect and should be reviewed for relocation to 01.civilization-system.

## 2. Counts

all_md_count:
- 2358

allowed_implementation_md_count:
- 1544

suspect_design_like_md_count:
- 814

## 3. Evidence

all_md:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_224922_03_development_md_design_audit/010_all_md_in_03.txt

allowed_md:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_224922_03_development_md_design_audit/020_allowed_implementation_md.txt

suspect_design_like_md:
- /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_224922_03_development_md_design_audit/030_suspect_design_like_md_in_03.txt

## 4. Result

Suspect design-like Markdown files were detected.

Next recommended action:
- Review /data/data/com.termux/files/home/01.civilization-system/920.meta/20260425_224922_03_development_md_design_audit/030_suspect_design_like_md_in_03.txt
- Move true design documents to 01.civilization-system
- Keep only README / HANDOFF / RUNBOOK / implementation operation docs in 03.civilization-development

## 5. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
