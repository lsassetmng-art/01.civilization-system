# ============================================================
# STREAMING OS RECURSIVE NONCANONICAL AUDIT
# ============================================================

status: audit
system: StreamingOS
prepared_by: Zero
owner: Boss
generated_at: 20260417_135329

scope:
- Recursive markdown filename audit under StreamingOS
- Archive area excluded:
  - 900.meta/099.legacy-root-misalignment-review/*
- Special allowlisted file:
  - 00_STREAMING_OS_INTEGRATED_REBUILT.md

canonical_rule:
- markdown files should match:
  - ^[0-9]{7}_[A-Z0-9_]+\.md$

summary:
- total_markdown_files_checked: 942
- noncanonical_candidates_found: 306

outputs:
- report: /data/data/com.termux/files/home/01.civilization-system/06.streaming-os/900.meta/099.legacy-root-misalignment-review/050.recursive-noncanonical-audit/0500001_STREAMING_OS_RECURSIVE_NONCANONICAL_AUDIT_20260417_135329.md
- list: /data/data/com.termux/files/home/01.civilization-system/06.streaming-os/900.meta/099.legacy-root-misalignment-review/050.recursive-noncanonical-audit/0500002_STREAMING_OS_RECURSIVE_NONCANONICAL_FILE_LIST_20260417_135329.txt

next_step_recommendation:
- Review the noncanonical candidate list
- Then run batch archive / rename for approved targets
