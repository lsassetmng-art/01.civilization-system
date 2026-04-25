# ============================================================
# STATIC ART OS CONTROLLED PATCH WORKFLOW
# ============================================================

status: controlled-patch-workflow
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the recommended workflow for safe future patching.

workflow:
  step_1_scope:
    - identify exact target files
    - identify whether the change is structural, wording, launcher, or execution-related
    - identify whether Persona rule is touched

  step_2_precheck:
    - read 000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md
    - read 000002_STATIC_ART_OS_STATUS_DASHBOARD.md
    - read 920.meta/080.maintenance_guard_pack/000001_STATIC_ART_OS_MAINTENANCE_GUARD_POLICY.md
    - run bash 132.operations/132490_staticart_drift_audit.sh if structure may already have drifted

  step_3_patch:
    - keep change additive where possible
    - keep markers/idempotence if patch is re-runnable
    - avoid silent deletion of navigation artifacts

  step_4_postcheck:
    - update launcher registry if a launcher is added/changed
    - update traceability/purpose map if a top-level artifact is added
    - run bash 132.operations/132410_staticart_master_readonly_sweep.sh for major navigation/review changes
    - run bash 132.operations/132290_staticart_persona_final_recheck.sh quick if Persona-related display/reference was touched

  step_5_record:
    - add or update report-style evidence under 920.meta
    - if change is major, record it in the changelog template / signoff-related notes

patch_rule:
- Prefer safe, reversible, traceable patches.
- Prefer non-destructive updates over broad rewrite.
