# ============================================================
# STATIC ART OS PERSONA REFERENCE BOUNDED ACTUALIZATION KICKOFF ROADMAP
# ============================================================

status: kickoff-roadmap
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the first bounded actualization roadmap after control-plane
design completion.

core_statement:
- Persona reference design has reached the point where further default work
  should be actualization rather than new concept splitting.
- Actualization must remain bounded, evidence-backed, and reversible.
- The safest first move is to decide scope clearly before any authored block
  or runner source is created.

# ------------------------------------------------------------
# 1. ACTUALIZATION PHASES
# ------------------------------------------------------------

actualization_phases:
  phase_A_scope_lock:
    goal:
      - decide whether Persona reference is actually in current scope
      - decide which surfaces are included
      - decide which packages are truly needed now

  phase_B_control_plane_bootstrap:
    goal:
      - initialize authored block storage/control plane only if actualization starts
      - keep runner/control artifacts filesystem-only and boundary-safe

  phase_C_first_authored_block:
    goal:
      - author the first bounded actual block from template
      - review it
      - stop if ambiguity remains

  phase_D_package_progression:
    goal:
      - move package by package, gate by gate
      - preserve evidence and rollback awareness

# ------------------------------------------------------------
# 2. RECOMMENDED FIRST ORDER
# ------------------------------------------------------------

recommended_first_order:
  1:
    - complete PR-A01 boundary and scope confirmation as the first actualized unit
  2:
    - if actualization proceeds, bootstrap storage/control plane
  3:
    - author first approved block only after scope lock
  4:
    - do not author DB/API/UI/runtime-facing blocks before PR-A01 closure

# ------------------------------------------------------------
# 3. WHAT THIS ROADMAP EXPLICITLY AVOIDS
# ------------------------------------------------------------

avoids:
- broad implementation jump without scope lock
- authoring runner/control artifacts before deciding actualization need
- semantic redesign disguised as first execution block
- direct movement from design completion to DB/API/UI work without a bounded first authored block

# ------------------------------------------------------------
# 4. KICKOFF JUDGEMENT
# ------------------------------------------------------------

kickoff_judgement:
- the next default move is bounded actualization kickoff
- the first actualization unit should be scope-locking, not broad implementation
