# ============================================================
# STATIC ART OS PERSONA REFERENCE MIGRATION CUTOVER AND BACKFILL EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact cutover/backfill expectations if Persona reference tables
are actually enabled later.

core_rule:
- cutover is optional and only needed if Persona-linked display/reference is enabled
- backfill must not invent upstream Persona truth
- authoritative result/replay remains source of correctness

# ------------------------------------------------------------
# 1. ENABLEMENT PRECONDITIONS
# ------------------------------------------------------------

enablement_preconditions:
- DB reference tables enabled
- reflection endpoints ready
- reconciliation checks ready
- UI can safely show unavailable/stale states
- boundary rules verified again before rollout

# ------------------------------------------------------------
# 2. BACKFILL MODES
# ------------------------------------------------------------

backfill_modes:
  empty_start:
    meaning:
      - enable feature with no prior reference rows
      - surfaces remain unavailable until authoritative results arrive

  authoritative_replay_backfill:
    meaning:
      - rebuild local reference/history/projection from authoritative result stream or replay

  partial_surface_enablement:
    meaning:
      - enable creator surface first
      - public/exhibition later

forbidden_backfill:
- synthetic local Persona truth backfill
- guessed rights state
- guessed projection content

# ------------------------------------------------------------
# 3. CUTOVER STEPS
# ------------------------------------------------------------

cutover_steps:
  1:
    - verify boundary-safe baseline
  2:
    - enable local schema/feature flags if needed
  3:
    - replay/backfill authoritative result stream
  4:
    - reconcile current rows and projections
  5:
    - enable read-side surface progressively
  6:
    - monitor drift/alert dashboard
  7:
    - keep rollback to unavailable/stale-safe state ready

# ------------------------------------------------------------
# 4. CUTOVER JUDGEMENT
# ------------------------------------------------------------

cutover_judgement:
- safest first state is empty/unavailable until authoritative results are present
- rollout should be gradual by surface and reversible
