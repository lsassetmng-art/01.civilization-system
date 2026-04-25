# PERSONA EDGE NAMING MIGRATION WORKLIST

status: confirmed
system: PersonaOS
layer: meta
confirmed_at: 20260418_112951

purpose:
Defines a non-destructive migration path from legacy edge_apply naming to orchestrator-aware naming.

phase_1_now:
- keep existing filenames
- add alias rules to first-wave docs
- use orchestrator reading in all new design discussions

phase_2_later:
- decide whether physical rename is necessary
- if renamed, update indexes and overview docs only after content freeze

files_in_scope:
- 1200013_PERSONA_EDGE_APPLY_CONCRETE_IMPLEMENTATION_BLOCK.md
- 1200014_PERSONA_EDGE_APPLY_BOUNDARY_AND_ERROR_ENFORCEMENT_BLOCK.md
- 1200015_PERSONA_EDGE_APPLY_IMPLEMENTATION_STARTER_SPEC.md
- 1200016_PERSONA_EDGE_APPLY_CODE_GENERATION_SPEC.md
- 1200017_PERSONA_EDGE_APPLY_REQUEST_VALIDATION_ORDER_SPEC.md
- 1200018_PERSONA_EDGE_APPLY_PERSISTENCE_WRITE_ORDER_SPEC.md
- 1200019_PERSONA_EDGE_APPLY_RESPONSE_MAPPING_SPEC.md
- 1200020_PERSONA_EDGE_APPLY_IMPLEMENTATION_UNIT_BREAKDOWN.md

migration_rule:
No physical rename is required before implementation-entry work continues.

