# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK VALIDATION LINT AND APPROVAL EXACT
# ============================================================

status: active-exact-validation
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define validation, lint, and approval rules for authored actual blocks.

lint_checks:
- block_id present
- package_id present
- block_title present
- scope_type present
- in_scope present
- out_of_scope present
- preconditions present
- touched_scope present
- no_touch_scope present
- execution_steps present
- expected_outputs present
- evidence_outputs present
- close_gate present
- failure_handling present
- rollback_or_safe_stop present

boundary_lint_checks:
- no statement implying Persona core ownership
- no statement implying direct Persona canonical mutation
- no statement implying local fabricated Persona truth
- signed snapshot basis preserved where display semantics are mentioned

approval_levels:
  ready_for_review:
    requirement:
      - lint complete
      - boundary lint complete
      - scope understandable

  approved_for_execution:
    requirement:
      - package dependency satisfied
      - review packet complete
      - failure/rollback path acceptable
      - evidence expectation acceptable

  return_for_fix:
    triggers:
      - ambiguous scope
      - missing evidence
      - missing rollback/safe stop
      - boundary ambiguity
      - hidden semantic redesign attempt

validation_rule:
- approval is about execution safety and boundary safety, not only document completeness
