# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK SAFETY IDEMPOTENCY AND ROLLBACK EXACT
# ============================================================

status: active-exact-safety
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define safety, idempotency, and rollback expectations for actual blocks.

safety_rules:
- block must declare whether it is re-runnable
- block must declare whether it is read-only, write, or mixed
- block must preserve evidence on both success and failure
- block must stop on boundary ambiguity

idempotency_rules:
  re_runnable_block:
    requirement:
      - repeating the block should not create uncontrolled duplication
      - duplicate evidence should remain explainable

  single_run_block:
    requirement:
      - block must explicitly say single-run only
      - block must explain why re-run is unsafe
      - block must define safe operator response if partial failure occurs

rollback_rules:
- DB-affecting block must define rollback or safe stop approach
- API/UI block must define disablement or revert behavior
- runtime-facing block must prefer unavailable/stale/restricted-safe fallback
- rollback must not invent Persona truth locally

boundary_stop_conditions:
- block implies Persona core ownership
- block implies direct Persona canonical mutation
- block implies local truth-like fallback
- block touches frozen semantic baseline without controlled change intake

failure_evidence_rules:
- keep raw command/log output where applicable
- update blocker/risk if material issue found
- keep failed run evidence additive
- do not overwrite a failed run to hide history

safety_judgement:
- safe block design makes later review and rollback possible without guesswork
