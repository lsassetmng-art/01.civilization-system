# ============================================================
# STATIC ART OS STANDALONE PHASE GATE MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

phase_gate_matrix:
  phase_1_to_phase_2:
    required:
      - schema exists
      - enums exist
      - tables exist
      - indexes exist

  phase_2_to_phase_3:
    required:
      - route -> validator -> guard -> service -> repository chain exists
      - creator-side governed writes are structurally bound
      - canonical envelope helpers exist

  phase_3_to_phase_4:
    required:
      - self-check path exists
      - review request path exists
      - review decision path exists
      - publish / delist / restrict / archive paths exist
      - lifecycle transition guard exists

  phase_4_to_phase_5:
    required:
      - entitlement resolution helper exists
      - access-session eligibility path exists
      - purchase/subscription reflection entry points exist

  phase_5_to_phase_6:
    required:
      - library list path exists
      - reader/viewer continuity paths exist
      - favorite / annotation paths exist

  phase_6_to_phase_7:
    required:
      - admin screens exist
      - review decision UI exists
      - support_readonly path is reflected

  final_standalone_gate:
    required:
      - acceptance source exists
      - policy/audit test source exists
      - final checklist exists
      - completion memo exists

important_rules:
  - No gate may be skipped silently
  - blocked phases must record named blockers
