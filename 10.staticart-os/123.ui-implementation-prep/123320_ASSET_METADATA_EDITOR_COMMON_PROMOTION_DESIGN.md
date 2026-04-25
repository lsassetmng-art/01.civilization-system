# ============================================================
# ASSET METADATA EDITOR COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Asset Metadata Editor Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Asset Metadata Editor Common
as a reusable metadata-editing feature family
for asset-centric and publishable-content applications.

canonical_responsibility:
- edit title / subtitle / description metadata
- edit localization-aware metadata blocks
- edit category and tag assignments
- expose metadata validation summary
- expose draft-safe metadata save behavior
- normalize metadata editing state for consumer apps

not_responsible_for:
- StaticArtOS-specific publish approval logic
- rights-policy decisions
- sales offer logic
- search-index backend ownership
- storage backend ownership

reuse_scope:
- creator applications
- publishing applications
- asset-management applications
- marketplace-connected applications
- archive-oriented applications

required_inputs:
- target_asset_or_draft_id
- metadata_profile
- current_metadata_payload
- supported_languages
- fallback_language
- category_source
- tag_source
- validation_profile
- permission_context

emitted_events:
- metadata_edit_started
- metadata_field_changed
- metadata_localization_changed
- category_assignment_changed
- tag_assignment_changed
- metadata_validation_failed
- metadata_validation_passed
- metadata_save_requested
- metadata_saved
- metadata_save_failed
- metadata_edit_cancelled

state_model:
- metadata_pristine
- metadata_editing
- metadata_dirty
- metadata_validation_failed
- metadata_ready_to_save
- metadata_saving
- metadata_saved
- metadata_save_failed
- metadata_edit_cancelled

ui_boundary:
- field-group editor sections
- multilingual block editor
- category/tag selector hooks
- validation summary
- unsaved-change visibility

promotion_caution:
- do not merge metadata editing with rights/sales/subscription logic
- do not hard-code StaticArtOS-specific wording
- do not overfit to one asset type only
- keep lower-level UI primitives underneath, not inside

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
