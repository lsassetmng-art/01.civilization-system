# ============================================================
# 004 / 005 / 006 / 012 CONTENT DENSITY CHECK
# ============================================================

status: canonical-review
type: content-density-check
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Checks whether the target domains contain the minimum expected
content signals for each layer, beyond file-count completeness.

targets:
- 004.mode
- 005.story
- 006.player
- 012.integration

layers:
- 020.architecture
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

check_method:
This is a heuristic structural-content check.
It does not judge design quality perfectly.
It checks whether expected canonical sections or phrases
are present in each file.

scoring_rule:
- PASS: enough expected signals found
- REVIEW_NEEDED: some expected signals missing
- THIN: many expected signals missing

## overall summary

- total_files_checked: 324
- pass: 124
- review_needed: 64
- thin: 136

## thin files

- none

## review_needed files

- none

## pass rule note

- PASS means the file contains enough expected canonical content signals.
- REVIEW_NEEDED means the file is usable but likely missing some desirable sections.
- THIN means the file likely needs reinforcement before final review.
