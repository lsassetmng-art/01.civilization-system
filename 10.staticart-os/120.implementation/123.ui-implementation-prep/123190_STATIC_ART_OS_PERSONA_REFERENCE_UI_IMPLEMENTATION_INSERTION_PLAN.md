# ============================================================
# STATIC ART OS PERSONA REFERENCE UI IMPLEMENTATION INSERTION PLAN
# ============================================================

status: active-implementation-insertion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define where Persona reference exact UI stateflow should be inserted
into actual StaticArtOS UI implementation work.

ui_insertion_targets:
  creator_workspace:
    add:
      - creator persona reference summary
      - signed snapshot status chip
      - expiry visibility
      - local view config panel
      - projection preview tabs

  public_asset_detail:
    add:
      - display-safe creator card
      - public signed snapshot projection rendering

  exhibition_display:
    add:
      - exhibition display-safe creator summary
      - stale/expired snapshot state presentation

  admin_or_audit_surface:
    add:
      - source_event_id visibility
      - snapshot/result/projection freshness visibility

do_not_add:
- Persona canonical profile editor
- emotion/growth/memory editing UI
- signature issue/revoke UI
- local authoritative Persona truth fallback

ui_sequence:
  1:
    - creator workspace summary/read-side
  2:
    - local_view_config editing
  3:
    - public asset detail projection
  4:
    - exhibition projection
  5:
    - audit visibility

ui_integration_judgement:
- UI integration is signed-snapshot-display oriented.
- UI integration must remain presentation-safe only.
