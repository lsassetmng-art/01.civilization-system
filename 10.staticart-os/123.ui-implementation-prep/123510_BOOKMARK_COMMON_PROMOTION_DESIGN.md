# ============================================================
# BOOKMARK COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Bookmark Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Bookmark Common
as a reusable bookmarking interaction family.

canonical_responsibility:
- create bookmark
- remove bookmark
- expose bookmark-state summary
- normalize bookmark action behavior for consumer apps

not_responsible_for:
- persistence engine ownership
- reader/viewer progress engine ownership
- StaticArtOS-specific UX wording

reuse_scope:
- reader applications
- viewer applications
- library applications
- item detail surfaces

required_inputs:
- target_id
- bookmark_state
- bookmark_profile
- permission_context_or_null

emitted_events:
- bookmark_add_requested
- bookmark_remove_requested
- bookmark_state_changed

state_model:
- bookmark_present
- bookmark_absent
- bookmark_pending
- bookmark_failed

promotion_caution:
- do not merge with progress sync
- keep persistence backend outside
- keep wording generic

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
