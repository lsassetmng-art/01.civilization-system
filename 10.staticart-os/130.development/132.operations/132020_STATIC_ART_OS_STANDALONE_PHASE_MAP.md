# ============================================================
# STATIC ART OS STANDALONE PHASE MAP
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

phase_map:
  phase_1:
    name: DB foundation
    primary_runner:
      - 121.db-implementation-prep/verification/990_staticart_phase1_full_verify.sh

  phase_2:
    name: creator write backbone
    primary_runner:
      - 122.api-implementation-prep/phase2-checks/990_staticart_phase2_full_check.sh

  phase_3:
    name: governance and publish backbone
    primary_runner:
      - 122.api-implementation-prep/phase3-checks/990_staticart_phase3_full_check.sh

  phase_4_5:
    name: entitlement, access, library, continuity
    primary_runner:
      - 122.api-implementation-prep/phase4-5-checks/990_staticart_phase4_5_full_check.sh

  phase_6_7:
    name: admin UI and acceptance
    primary_runner:
      - 124.test-implementation-prep/phase6-7-checks/990_staticart_phase6_7_full_check.sh

  final:
    name: standalone summary
    primary_runner:
      - 124.test-implementation-prep/final-standalone-checks/999_staticart_standalone_full_check.sh
