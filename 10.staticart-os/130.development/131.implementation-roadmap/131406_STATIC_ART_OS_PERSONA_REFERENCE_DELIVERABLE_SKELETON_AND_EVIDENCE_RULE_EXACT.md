# ============================================================
# STATIC ART OS PERSONA REFERENCE DELIVERABLE SKELETON AND EVIDENCE RULE EXACT
# ============================================================

status: active-exact-deliverable-rule
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the minimum deliverable skeleton and evidence bundle expected
for each actual implementation package.

deliverable_skeleton:
  required_sections:
    - package_id
    - goal
    - touched_files
    - untouched_files_of_concern
    - implemented_behavior
    - forbidden_behavior_rechecked
    - evidence_paths
    - open_risks
    - close_gate_result

minimum_evidence_bundle:
- execution session log or equivalent command record
- post-run summary
- blocker/risk update if applicable
- boundary confirmation note if Persona scope touched
- acceptance proof relevant to the package
- rollback/disablement note if runtime-facing package

evidence_rule:
- evidence should match actual implemented scope
- evidence should be additive
- evidence should make later review possible without guessing

package_close_rule:
- package may close only when implemented behavior and evidence agree
- package may not close on verbal assumption alone
