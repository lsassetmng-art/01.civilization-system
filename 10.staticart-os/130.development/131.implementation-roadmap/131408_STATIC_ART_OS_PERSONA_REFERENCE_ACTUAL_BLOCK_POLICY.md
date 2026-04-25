# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK POLICY
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the policy for turning Persona reference implementation work
into actual executable blocks.

core_rule:
- one actual block = one bounded, reviewable, execution-ready unit
- actual block must correspond to one approved work package or one slice of it
- actual block must be safe to read before execution
- actual block must preserve Persona boundary rules
- actual block must not hide redesign inside execution text

actual_block_principles:
- keep block scope narrow and explicit
- prefer additive behavior
- state preconditions before actions
- state evidence outputs before execution
- state rollback/disablement view before execution
- keep naming stable and predictable
- keep block re-runnable or explicitly single-run only

mandatory_block_sections:
- block_id
- package_id
- purpose
- preconditions
- touched_scope
- no_touch_scope
- execution_steps
- expected_outputs
- evidence_outputs
- close_gate
- failure_handling
- rollback_or_safe_stop

forbidden_block_behavior:
- hidden Persona ownership expansion
- direct Persona canonical mutation
- local fabrication of Persona truth
- broad unrelated file touch in one block
- no evidence path defined
- no failure/stop rule defined

policy_judgement:
- actual block design exists to make execution safe, reviewable, and non-destructive
