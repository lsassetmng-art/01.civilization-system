# ============================================================
# 004 / 005 / 006 / 012 CONTENT DENSITY CHECK (CORE ONLY RERUN)
# ============================================================

status: canonical-review
type: content-density-check
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Re-runs the body-file-only density check after reinforcement patches.

targets:
- 004.mode
- 005.story
- 006.player
- 012.integration

excluded_files:
- *_INDEX.md
- *_OVERVIEW.md
- 040_*.md
- 050_*.md
- 060_*.md
- 070_*.md
- 080_*.md
- 100_*.md
- 110_*.md
- 120_*.md
- 130_*.md

scoring_rule:
- PASS: enough expected signals found
- REVIEW_NEEDED: some expected signals missing
- THIN: many expected signals missing

## overall summary

- total_body_files_checked: 204
- pass: 204
- review_needed: 0
- thin: 0

## thin files

- none

## review_needed files

- none

## interpretation

- This rerun excludes navigation, overview, and layer-summary files.
- It evaluates canonical body density only.
- PASS means body density is broadly sufficient.
- REVIEW_NEEDED means targeted reinforcement is still desirable.
- THIN means the body remains structurally underfilled.
