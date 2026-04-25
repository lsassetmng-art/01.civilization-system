# ============================================================
# STATIC ART OS PERSONA REFERENCE DRY RUN AND APPLY MODE RULE
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define dry-run/apply expectations for the registry/queue runner family.

mode_definitions:
  dry_run:
    meaning:
      - compute intended outputs
      - show anomalies and planned writes
      - do not alter files

  apply:
    meaning:
      - write refreshed/generated files to canonical storage
      - preserve report of what changed

  audit_only:
    meaning:
      - inspect and report inconsistencies only
      - do not repair or rewrite

mode_rules:
- initialization runner may support dry_run and apply
- refresh runner should support dry_run and apply
- consistency audit runner should support audit_only and optional dry_run-style preview of recommended fixes
- apply must not occur implicitly after dry_run
- apply output should be idempotent when inputs are unchanged

required_mode_visibility:
- every runner invocation should make mode obvious in its report
- reports should distinguish scanned inputs from written outputs
- dry_run should be safe for routine inspection

mode_judgement:
- explicit mode separation reduces accidental filesystem mutation and review confusion
