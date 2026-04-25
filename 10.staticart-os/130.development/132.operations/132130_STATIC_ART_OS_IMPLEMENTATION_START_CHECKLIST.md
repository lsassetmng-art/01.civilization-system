# ============================================================
# STATIC ART OS IMPLEMENTATION START CHECKLIST
# ============================================================

status: handoff-ready
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

pre_start:
- confirm working root is 10.staticart-os
- confirm PERSONA_DATABASE_URL is exported
- confirm DATABASE_URL is not being used for StaticArtOS Persona-side work
- confirm freeze manifest exists
- confirm master launcher exists

phase_1:
- run workflow help
- run precheck
- run apply only after DB review is complete
- run verify
- confirm schema/tables/indexes are present

phase_2_to_7:
- run phase2-check
- run phase3-check
- run phase4-5-check
- run phase6-7-check
- record blockers after each phase if any

final:
- run final-check
- fill completion memo
- decide standalone implementation-ready judgement

judgement_rule:
- standalone implementation-ready requires structure, phase checks, and final check to be in place
- unresolved blockers must be named directly
