# ============================================================
# STATIC ART OS PERSONA REFERENCE UI ADDENDUM
# ============================================================

status: active-design-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the UI-layer addendum for Persona reference usage inside
StaticArtOS.

ui_policy:
- UI may show signed-snapshot-based persona display.
- UI may allow local view config changes only.
- UI must not become a Persona canonical editor.

creator_workspace_additions:
  allowed:
    - creator persona reference summary panel
    - applied signed snapshot status chip
    - local view config editor
    - public display preview from signed snapshot projection
  forbidden:
    - persona canonical profile editor
    - emotion editor
    - growth editor
    - memory editor
    - signature issue/revoke editor

marketplace_product_detail_additions:
  allowed:
    - signed snapshot based creator card
    - display-safe public summary
    - avatar/projection-safe render display
  forbidden:
    - local persona truth editing
    - direct Persona canonical mutation actions

exhibition_related_additions:
  allowed:
    - exhibition display snapshot summary
    - exhibition-safe profile projection
  forbidden:
    - mutable persona truth rendering as authority

admin_view_additions:
  allowed:
    - snapshot reference audit visibility
    - source_event_id visibility if needed
    - projection freshness status
  forbidden:
    - Persona canonical repair/edit actions inside StaticArtOS

local_view_config_rule:
- local_view_config changes may affect presentation only
- local_view_config changes must never mutate Persona canonical truth
