# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK AUTHORING POLICY
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the authoring policy for actual execution blocks used in
Persona reference implementation work.

core_rule:
- actual block authoring is a controlled design activity
- every authored block must map to an approved package and approved scope
- every authored block must be reviewable before execution
- every authored block must preserve Persona boundary rules

authoring_principles:
- author blocks from frozen baseline, not from memory
- author one bounded execution concern per block
- keep preconditions explicit
- keep no-touch scope explicit
- keep evidence outputs explicit
- keep close gate explicit
- keep stop/rollback behavior explicit
- prefer stable naming and reusable structure

authoring_inputs:
- frozen baseline
- actual work package catalog
- actual block template
- dependency and gate map
- rollback / release / acceptance baselines

authoring_outputs:
- one authored block file or one bounded authored block bundle
- review packet for the authored block
- evidence expectation note

forbidden_authoring_behavior:
- authoring a block without package_id
- authoring a block without scope boundary
- authoring a block that changes Persona ownership assumptions
- authoring a block that implies direct Persona canonical mutation
- authoring a block that omits failure/stop behavior
- authoring a block that omits evidence outputs

policy_judgement:
- authored block quality is part of system safety, not only formatting quality
