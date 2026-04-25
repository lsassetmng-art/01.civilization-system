# ============================================================
# STATIC ART OS IMPLEMENTATION START HANDOFF
# ============================================================

status: handoff-ready
system: StaticArtOS
mode: standalone
owner: Boss
prepared_by: Zero

objective:
Provide the canonical "start here" instructions for the standalone
StaticArtOS implementation-prep pack created in this chat.

scope_of_this_handoff:
- StaticArtOS standalone only
- Persona-side DB work only
- No CX22073JW work in this chat
- Exhibition Builder handled only through local derived projection

environment_rule:
- PERSONA_DATABASE_URL is the only Persona-side DB target
- DATABASE_URL must not be used for StaticArtOS Persona-side DB work

start_order:
  1:
    name: confirm environment
    command:
      - bash 132.operations/132140_staticart_start_here.sh env

  2:
    name: read overview
    files:
      - 000_STATIC_ART_OS_INDEX.md
      - 000_STATIC_ART_OS_OVERVIEW.md
      - 000_STATIC_ART_OS_ROADMAP.md

  3:
    name: check launcher help
    command:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh help

  4:
    name: phase 1 DB workflow
    commands:
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh help
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh precheck
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh apply
      - bash 121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh verify

  5:
    name: phase checks after DB foundation
    commands:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase2-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase3-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase4-5-check
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh phase6-7-check

  6:
    name: final standalone confirmation
    command:
      - bash 132.operations/132100_staticart_standalone_master_launcher.sh final-check

  7:
    name: fill completion memo
    files:
      - 131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md

important_rules:
- Do not skip Phase 1 verification.
- Do not claim later phases complete if earlier gates are unstable.
- Record blockers explicitly.
- Keep StaticArtOS standalone judgement separate from external integration work.
<!-- PERSONA_REFERENCE_HANDOFF_ADDENDUM_START -->

persona_reference_handoff_addendum:
- Before implementation of Persona-linked display, review the Persona non-duplication rule.
- StaticArtOS must consume Persona signed snapshot references only.
- StaticArtOS must not add Persona core duplicate tables.
- StaticArtOS must not introduce direct Persona canonical mutation paths.
- Persona-related change flow remains request event -> PersonaOS apply -> result event -> StaticArtOS reflect.

<!-- PERSONA_REFERENCE_HANDOFF_ADDENDUM_END -->
