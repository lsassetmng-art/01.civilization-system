# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER STORAGE CHANGE CONTROL AND PATCH RULE
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define how runner storage or runner source updates should be controlled.

change_control_rules:
- patch runner source only through visible lineage-aware revision
- patch runner storage topology only through explicit design-aware review
- patch registry/index/queue meaning only through controlled change lane
- prefer additive patch over broad rewrite where possible

runner_patch_classes:
  class_A_low_risk:
    examples:
      - wording fix
      - report formatting improvement
      - additive non-semantic note
    expected_control:
      - normal review lane

  class_B_behavioral:
    examples:
      - new refresh field
      - new anomaly detection
      - changed output path under same topology
    expected_control:
      - version bump
      - review and lineage note

  class_C_safety_sensitive:
    examples:
      - changed dry_run/apply behavior
      - changed canonical source precedence
      - changed storage path semantics
    expected_control:
      - explicit approval
      - patch impact note
      - re-review before operational use

  class_D_boundary_sensitive:
    examples:
      - any runner change implying broader authority than filesystem/control-plane maintenance
    expected_control:
      - redesign or explicit change intake only

patch_rule:
- no patch should silently change what operator trust depends on
- no patch should convert runner into a hidden execution authority over Persona truth
- runner patching must preserve signed-snapshot-consumption-only project baseline

patch_judgement:
- runner patch control exists because operators depend on runner behavior being predictable and reviewable
