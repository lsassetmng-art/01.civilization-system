# ============================================================
# STATIC ART OS STANDALONE COMMAND INDEX
# ============================================================

status: implementation-prep
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

purpose:
Provides the canonical command entry points for the standalone
StaticArtOS implementation-prep and verification flow.

environment_rule:
  - PERSONA_DATABASE_URL is required for Persona-side DB work
  - DATABASE_URL must not be used for StaticArtOS Persona-side DB work

main_entrypoints:
  help:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh help

  final_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh final-check

  phase1_verify:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase1-verify

  phase2_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase2-check

  phase3_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase3-check

  phase4_5_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase4-5-check

  phase6_7_check:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh phase6-7-check

  chained_checks:
    command:
      - bash 132100_staticart_standalone_master_launcher.sh chained-checks

notes:
  - This launcher does not replace implementation work.
  - This launcher is the command navigation layer for the standalone pack.
