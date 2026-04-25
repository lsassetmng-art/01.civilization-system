# ============================================================
# STATIC ART OS PERSONA REFERENCE AUTHORING REVIEW EXECUTION ARCHIVE SEPARATION EXACT
# ============================================================

status: active-exact-separation
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define exact separation between authored blocks, review artifacts,
execution evidence, and archive lineage.

separation_zones:
  authoring:
    contains:
      - in-progress block drafts
    must_not_contain:
      - final execution logs
      - ambiguous mixed review history

  review:
    contains:
      - review-ready block
      - approval packet
      - return-for-fix note
    must_not_contain:
      - runtime execution logs as primary content

  approved_for_execution:
    contains:
      - approved execution-ready block
      - execution intent linkage note
    must_not_contain:
      - hidden semantic redesign notes not reviewed

  execution_evidence:
    contains:
      - run directory
      - logs
      - post-run summary
      - blocker/risk updates
    must_not_contain:
      - authored block source-of-truth

  archive_or_superseded:
    contains:
      - outdated block variants
      - reason notes
      - lineage notes
    must_not_contain:
      - active approved block pretending to be archive only

separation_rule:
- draft/review/approved/executed/archive are different states and should remain visibly different
- do not bury review results inside run logs only
- do not bury execution evidence inside authored block drafts only

separation_judgement:
- separation exists to prevent loss of review lineage and loss of execution traceability
