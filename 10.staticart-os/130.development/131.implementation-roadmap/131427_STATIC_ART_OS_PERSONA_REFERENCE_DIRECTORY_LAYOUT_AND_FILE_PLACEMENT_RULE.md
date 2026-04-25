# ============================================================
# STATIC ART OS PERSONA REFERENCE DIRECTORY LAYOUT AND FILE PLACEMENT RULE
# ============================================================

status: active-exact-layout
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define exact directory layout and file placement rules for actual
blocks.

recommended_layout:
  132.operations/600.actual-blocks:
    100.authoring-drafts:
      files:
        - authored draft block markdown
        - draft review notes if needed
    200.review-ready:
      files:
        - review-ready block markdown
        - approval packet companion note
    300.approved-for-execution:
      files:
        - approved block markdown
        - execution intent note
    400.superseded-or-returned:
      files:
        - returned block markdown
        - superseded block markdown
        - reason note
    500.executed-block-references:
      files:
        - executed block to run-dir mapping notes
    900.index:
      files:
        - block master index
        - block status ledger
        - package-to-block map
        - review queue note

placement_rules:
- actual block source file should exist in exactly one stage folder at a time
- if a block changes stage, preserve history by move-plus-ledger update or copy-with-status-control according to project rule
- do not keep conflicting live copies of the same block in multiple active stage folders
- lightweight reference files may point from approved/executed lineage to run evidence

file_types_allowed:
- markdown for authored/review/reason/index artifacts
- shell file only if explicitly approved as execution wrapper later
- do not put raw execution logs under authored block root

placement_judgement:
- file placement must reveal lifecycle stage without opening every file
