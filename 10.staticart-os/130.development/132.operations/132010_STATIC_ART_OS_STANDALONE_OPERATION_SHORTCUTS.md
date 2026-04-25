# ============================================================
# STATIC ART OS STANDALONE OPERATION SHORTCUTS
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

quick_start:
  1:
    - export PERSONA_DATABASE_URL first
  2:
    - run help
  3:
    - run phase-specific checks
  4:
    - run final-check
  5:
    - fill completion memo

recommended_order:
  - phase1-verify
  - phase2-check
  - phase3-check
  - phase4-5-check
  - phase6-7-check
  - final-check

important_rule:
  - If a lower phase is not stable, do not pretend later phases are complete.
