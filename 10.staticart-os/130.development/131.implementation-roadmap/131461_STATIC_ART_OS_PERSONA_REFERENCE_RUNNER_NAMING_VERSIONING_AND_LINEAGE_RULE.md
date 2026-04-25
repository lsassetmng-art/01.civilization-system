# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER NAMING VERSIONING AND LINEAGE RULE
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define naming, versioning, and lineage rules for actual runner files.

core_rule:
- runner identity must remain stable across reviews and revisions
- versioning must preserve lineage and explain supersession
- naming must show runner purpose without opening the file

runner_identity_shape:
- PR-RUN-INIT-01
- PR-RUN-REFRESH-01
- PR-RUN-AUDIT-01

recommended_filename_shape:
- persona_reference_runner_init_v001.sh
- persona_reference_runner_refresh_v001.sh
- persona_reference_runner_audit_v001.sh

versioning_rules:
  initial_authoring:
    - starts at v001

  additive_safe_revision:
    - increment patch-like version counter visibly
    - keep predecessor reference

  behavior_change_revision:
    - increment visible version
    - record compatibility and operator impact
    - do not silently replace prior reviewed meaning

  supersession:
    - old runner moves to superseded-or-returned
    - successor runner keeps predecessor reference

required_lineage_fields:
- runner_id
- runner_version
- predecessor_runner_version_if_any
- successor_runner_version_if_any
- approval_state
- current_stage
- current_storage_path
- latest_report_root_if_any

forbidden_versioning_behavior:
- overwriting approved runner without lineage note
- silent semantic change under same visible version
- breaking dry_run/apply meaning without explicit version change
- dropping predecessor/successor traceability

versioning_judgement:
- runner versioning exists to make operational changes explainable and reviewable
