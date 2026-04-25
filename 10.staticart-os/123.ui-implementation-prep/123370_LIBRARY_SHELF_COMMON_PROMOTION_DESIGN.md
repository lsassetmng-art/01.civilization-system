# ============================================================
# LIBRARY SHELF COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Library Shelf Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Library Shelf Common
as a reusable shelf/collection presentation family
for owned, continue, favorites, and downloaded surfaces.

canonical_responsibility:
- render shelf title and shelf summary
- render item strip/grid inside a shelf
- expose shelf open and item open hooks
- support owned / continue / favorites / downloaded shelf patterns
- normalize shelf behavior for consumer apps

not_responsible_for:
- continuity engine ownership
- bookmark/favorite persistence logic
- StaticArtOS-specific library taxonomy
- download engine ownership

reuse_scope:
- library applications
- owned content surfaces
- favorites surfaces
- continue-consumption surfaces
- collection-based applications

required_inputs:
- shelf_id
- shelf_type
- shelf_title
- shelf_summary_or_null
- items
- display_mode
- continuity_projection_or_null
- permission_context_or_null

emitted_events:
- shelf_open_requested
- shelf_item_open_requested
- shelf_overflow_requested
- shelf_refresh_requested

state_model:
- shelf_loading
- shelf_ready
- shelf_empty
- shelf_error

ui_boundary:
- shelf header
- shelf item region
- optional overflow action
- empty/error state placement

promotion_caution:
- do not hard-code StaticArtOS library categories
- do not merge shelf presentation with persistence or projection engines
- do not absorb continue/favorite exact logic into the shelf family

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
