# ============================================================
# IMPLEMENTATION HANDOFF MASTER CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

handoff_master_summary:
  - design is fixed enough for implementation entry
  - implementation itself is still not started
  - safety-sensitive decisions are already frozen
  - release slices and work packages are defined

read_first_order:
  - 000001_APP_OVERVIEW.md
  - 000002_APP_READING_ORDER.md
  - 9000008_DESIGN_COVERAGE_AUDIT.md
  - 9000011_DECISION_FREEZE_ROUND_1.md
  - 1200201_IMPLEMENTATION_PREPARATION_CANONICAL.md
  - 1300201_RELEASE_SLICE_CANONICAL.md
  - 1300205_DEVELOPMENT_WORK_PACKAGE_CANONICAL.md
  - 1300207_ACCEPTANCE_EXECUTION_CHECKLIST_CANONICAL.md

handoff_guardrails:
  - do not reopen frozen decisions unless necessary
  - do not start from share/export first
  - do not assume design reference docs are executable artifacts
  - keep schema_name as life
  - keep common components deferred

start_conditions_for_future_implementation:
  - handoff reader has read the above order
  - security/share decisions are accepted
  - phase sequence is accepted
