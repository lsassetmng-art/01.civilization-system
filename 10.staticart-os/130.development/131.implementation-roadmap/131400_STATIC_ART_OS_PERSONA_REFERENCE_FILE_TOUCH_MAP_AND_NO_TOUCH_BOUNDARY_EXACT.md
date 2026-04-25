# ============================================================
# STATIC ART OS PERSONA REFERENCE FILE TOUCH MAP AND NO TOUCH BOUNDARY EXACT
# ============================================================
# Changed from earlier drafts to better reflect current canonical layout.

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
State which files/folders are expected touchpoints for Persona
reference implementation and which areas should remain untouched.

expected_touch_areas:
  db_touch:
    - 121.db-implementation-prep
    - migration wrapper area if later introduced
  api_touch:
    - 122.api-implementation-prep
    - internal reflection route implementation area if later introduced
  ui_touch:
    - 123.ui-implementation-prep
    - creator/public/exhibition surface implementation area if later introduced
  test_touch:
    - 124.test-implementation-prep
  operations_touch:
    - 132.operations for implementation/evidence/review launchers only if needed
  evidence_touch:
    - execution run workspace
    - blocker/risk registers
    - post-run summaries

no_touch_without_explicit_change_intake:
- root ownership principles
- Persona non-duplication rule
- Persona direct mutation abolish rule
- frozen baseline semantics
- signed snapshot basis as display identity rule
- final landing portal meaning
- master design roadmap meaning

no_touch_for_persona_feature_work:
- unrelated StaticArt business semantics
- unrelated marketplace/lifecycle rules not needed for Persona-linked display
- unrelated cross-OS architecture decisions
- upstream Persona canonical ownership assumptions

touch_rule:
- touching a file for implementation evidence is different from redefining its semantics
- semantic changes to frozen baseline require controlled patch workflow
