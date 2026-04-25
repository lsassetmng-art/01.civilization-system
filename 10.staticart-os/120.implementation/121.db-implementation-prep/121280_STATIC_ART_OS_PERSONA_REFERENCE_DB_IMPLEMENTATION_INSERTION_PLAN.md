# ============================================================
# STATIC ART OS PERSONA REFERENCE DB IMPLEMENTATION INSERTION PLAN
# ============================================================

status: active-implementation-insertion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define where and when the exact Persona reference DB tables should be
inserted into actual StaticArtOS implementation work.

insertion_rule:
- Do not introduce Persona tables in Phase 1 unless Persona-linked display work is actually in scope.
- If Persona-linked display is needed, add reference/history/projection tables only.
- Apply DB additions after base schema stability is confirmed.

implementation_targets:
  add_if_needed:
    - staticart.asset_creator_persona_ref
    - staticart.asset_creator_signed_snapshot_ref
    - staticart.asset_public_display_snapshot_ref
    - staticart.asset_exhibition_display_snapshot_ref
    - staticart.asset_persona_applied_snapshot_history
    - staticart.asset_local_view_config
    - staticart.asset_creator_display_projection

recommended_order:
  1:
    - asset_creator_persona_ref
  2:
    - asset_creator_signed_snapshot_ref
    - asset_public_display_snapshot_ref
    - asset_exhibition_display_snapshot_ref
  3:
    - asset_persona_applied_snapshot_history
  4:
    - asset_local_view_config
  5:
    - asset_creator_display_projection

preconditions:
- asset canonical table exists and is stable
- Persona non-duplication rule remains active
- request/apply/result event flow is accepted as boundary rule

postconditions:
- no persona core duplicate table exists
- signed snapshot reference can be stored for each target surface
- local view config stays presentation-only
- display projection stays rebuildable

forbidden_db_insertions:
- staticart.persona_core
- staticart.persona_state
- staticart.persona_growth
- staticart.persona_memory
- staticart.persona_signature
- staticart.persona_rights
- staticart.persona_contract

db_integration_judgement:
- DB work must stay reference-only.
- DB work must never move Persona authority into StaticArtOS.
