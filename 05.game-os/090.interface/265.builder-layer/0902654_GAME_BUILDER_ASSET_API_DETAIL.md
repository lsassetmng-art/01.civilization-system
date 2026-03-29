# ============================================================
# GAME BUILDER ASSET API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Asset API of Game Builder.

This interface specifies the asset-facing API contract
used by Asset Studio and Builder-supporting services.

It covers:
- asset listing
- asset retrieval
- asset upload/import
- asset metadata update
- asset replacement
- derived asset creation
- pixel/unit/building asset save
- asset variant generation
- asset binding / unbinding
- asset usage inspection
- asset validation visibility

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF ASSET API
# ============================================================

The Asset API manages Builder-owned material assets.

It must support:
- project-scoped asset discovery
- explicit asset import
- explicit asset lineage
- runtime-aware asset compatibility
- template-aware asset completeness
- binding-aware asset operations
- non-Persona boundary enforcement

The Asset API must not:
- act as a Persona truth editor
- allow hidden runtime-incompatible asset activation
- allow unresolved required asset families
  to appear export-ready


# ============================================================
# 2. ASSET OBJECT MINIMUM SHAPE
# ============================================================

An asset object must expose at minimum:

- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- usage_scope
- source_type
- template_origin_summary where applicable
- variant_summary where applicable
- export_metadata_summary
- validation_state_summary
- active_binding_summary where applicable
- created_at
- updated_at

Recommended additional fields:
- asset_hash
- parent_asset_ref where derived
- lineage_summary
- runtime_compatibility_summary
- non_persona_boundary_summary


# ============================================================
# 3. LIST PROJECT ASSETS
# ============================================================

operation_name:
list_project_assets

purpose:
Return assets visible for one project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- asset_type
- asset_family
- asset_status
- usage_scope
- validation_state_filter
- sort_key
- page_ref where pagination is used

required_response_fields:
- project_code
- asset_list
- page_summary or total_count

Each asset_list item should expose at minimum:
- asset_ref
- asset_type
- asset_family
- asset_status
- usage_scope
- validation_state_summary
- active_binding_summary
- updated_at

behavior_rules:
- listing must remain project-scoped
- listing must support filtering by material asset class
- listing must not hide invalid or required assets silently


# ============================================================
# 4. GET ASSET
# ============================================================

operation_name:
get_asset

purpose:
Return one asset in detail.

required_request_fields:
- project_code
- asset_ref
- correlation_id

required_response_fields:
- asset object with minimum shape
- metadata summary
- variant summary where applicable
- binding summary where applicable
- usage summary
- validation summary
- payload access summary or payload reference

behavior_rules:
- get_asset must be enough to populate Asset Browser detail
  and Asset Binding Inspector surfaces


# ============================================================
# 5. UPLOAD / IMPORT ASSET
# ============================================================

operation_name:
upload_asset

purpose:
Import a new raw or semi-processed asset into Builder.

required_request_fields:
- project_code
- asset_type
- asset_family
- usage_scope
- correlation_id

required_payload_fields:
- asset_payload_ref or upload stream
- source_format summary
- import_summary

optional_request_fields:
- template_origin_summary
- runtime_family_hint
- export_profile_hint
- asset_name

required_response_fields:
- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- created_at
- updated_at

behavior_rules:
- upload must create new asset identity
- upload must capture lineage/origin metadata
- upload must not implicitly bind asset to project structures
- upload must remain subject to non-Persona boundary rules

blocking_conditions:
- invalid asset_type or asset_family
- project unresolved
- prohibited Persona overlap
- permission denied
- unsupported import format where applicable


# ============================================================
# 6. UPDATE ASSET METADATA
# ============================================================

operation_name:
update_asset_metadata

purpose:
Update bounded metadata of an existing asset.

required_request_fields:
- project_code
- asset_ref
- correlation_id

optional_mutable_fields:
- asset_name
- usage_scope where allowed
- export metadata fields where allowed
- descriptive metadata
- palette metadata where allowed
- variant labels where allowed

required_response_fields:
- asset_ref
- updated_at
- updated metadata summary
- validation_state_summary

behavior_rules:
- metadata update must remain bounded
- identity-critical lineage must not be overwritten casually
- runtime/template compatibility should be re-evaluated where affected


# ============================================================
# 7. REPLACE ACTIVE ASSET BINDING
# ============================================================

operation_name:
replace_bound_asset
or
rebind_asset

purpose:
Replace one currently bound asset with another asset.

required_request_fields:
- project_code
- target_binding_ref
- replacement_asset_ref
- correlation_id

required_response_fields:
- target_binding_ref
- replacement_asset_ref
- resulting_binding_summary
- updated_at

behavior_rules:
- replacement must be explicit
- replacement must preserve binding visibility
- replacement must re-evaluate required asset family completeness
- replacement must re-evaluate runtime compatibility
- replacement must not silently invalidate export readiness

blocking_conditions:
- replacement asset unresolved
- incompatible asset family
- incompatible runtime usage scope
- permission denied
- policy_blocked


# ============================================================
# 8. CREATE DERIVED ASSET
# ============================================================

operation_name:
create_derived_asset

purpose:
Create a derived asset from an existing source asset.

Examples:
- recolor variant
- resized export-safe variant
- sprite sheet derivative
- state variant derivative

required_request_fields:
- project_code
- source_asset_ref
- correlation_id

optional_request_fields:
- derivation_type
- derivation_profile
- variant_summary
- target_usage_scope

required_response_fields:
- new_asset_ref
- source_asset_ref
- asset_status
- created_at

behavior_rules:
- derived asset must preserve lineage to source
- derived asset must receive new identity
- derived asset must not overwrite source payload truth
- derivation must remain runtime/template/export compatible


# ============================================================
# 9. SAVE PIXEL ASSET
# ============================================================

operation_name:
save_pixel_asset

purpose:
Persist Builder-authored pixel art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- palette_summary
- export_profile_summary
- raster_or_canvas_payload_ref

required_response_fields:
- asset_ref
- asset_type
- asset_family
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve asset lineage
- save must remain compatible with pixel-asset families
- save must expose validation-impacting metadata


# ============================================================
# 10. SAVE UNIT ART ASSET
# ============================================================

operation_name:
save_unit_art_asset

purpose:
Persist Builder-authored unit art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- palette_or_variant_summary
- export_profile_summary
- raster_payload_ref

required_response_fields:
- asset_ref
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve unit-art lineage
- save must preserve class/variant compatibility metadata
- save must remain runtime-aware for RPG/Strategy usage


# ============================================================
# 11. SAVE BUILDING ART ASSET
# ============================================================

operation_name:
save_building_art_asset

purpose:
Persist Builder-authored building art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- state_variant_summary
- export_profile_summary
- raster_payload_ref

required_response_fields:
- asset_ref
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve building-art lineage
- save must preserve state-variant metadata
- save must remain runtime-aware for Strategy/RPG usage where applicable


# ============================================================
# 12. GENERATE ASSET VARIANT
# ============================================================

operation_name:
generate_asset_variant

purpose:
Create a variant from an existing asset through bounded variant rules.

Examples:
- faction recolor
- rarity recolor
- upgrade state
- damage state
- emblem swap variant

required_request_fields:
- project_code
- source_asset_ref
- variant_profile_code or variant_summary
- correlation_id

required_response_fields:
- new_asset_ref
- source_asset_ref
- variant_summary
- created_at

behavior_rules:
- variant generation must preserve lineage
- variant must receive new identity
- generated variant must remain explicitly derived
- illegal variant generation for unsupported asset types must be blocked


# ============================================================
# 13. BIND ASSET TO PROJECT
# ============================================================

operation_name:
bind_asset_to_project

purpose:
Bind an asset to a project-facing structure or binding target.

required_request_fields:
- project_code
- asset_ref
- target_binding_ref
- usage_scope
- correlation_id

required_response_fields:
- asset_ref
- target_binding_ref
- binding_summary
- updated_at

behavior_rules:
- binding must be explicit
- binding must validate target compatibility
- binding must validate runtime/template legality
- binding must contribute to required asset family resolution where applicable

blocking_conditions:
- asset unresolved
- target binding unresolved
- incompatible asset family
- incompatible usage_scope
- permission denied
- prohibited Persona overlap


# ============================================================
# 14. UNBIND ASSET FROM PROJECT
# ============================================================

operation_name:
unbind_asset_from_project

purpose:
Remove or replace an active asset binding.

required_request_fields:
- project_code
- asset_ref or target_binding_ref
- correlation_id

required_response_fields:
- resulting_binding_summary
- updated_at

behavior_rules:
- unbind must be explicit
- unbind must re-evaluate required asset family completeness
- unbind must not silently leave project falsely marked export-ready

blocking_conditions:
- required binding removal would invalidate mandatory asset completeness
  where policy blocks direct removal
- permission denied
- policy_blocked


# ============================================================
# 15. LIST ASSET USAGE
# ============================================================

operation_name:
list_asset_usage

purpose:
Return all known project/runtime/template usages of one asset.

required_request_fields:
- project_code
- asset_ref
- correlation_id

required_response_fields:
- asset_ref
- usage_list

Each usage_list item should expose at minimum:
- target_scope_type
- target_scope_ref
- usage_scope
- required_or_optional classification
- active_binding yes/no

behavior_rules:
- usage visibility must support safe replacement and deletion decisions
- usage visibility must support Binding Inspector surfaces


# ============================================================
# 16. GET ASSET VALIDATION STATE
# ============================================================

operation_name:
get_asset_validation_state
or
list_asset_validation_state

purpose:
Return formal validation visibility for one or more assets.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- asset_ref
- validation_stage
- severity_filter

required_response_fields:
- asset validation entries
Each entry should include:
- asset_ref
- validation_stage
- severity_summary
- finding_count_summary
- last_validated_at where applicable

behavior_rules:
- asset validation state must align with formal validation truth
- frontend must not invent asset validation state


# ============================================================
# 17. ROLE-AWARE ACCESS RULE
# ============================================================

Asset API access must be role-aware.

owner:
- full asset list/get/upload/update/derive/bind authority

editor:
- broad asset authoring authority according to policy

reviewer:
- read visibility
- validation visibility
- no unrestricted asset mutation by default

publisher:
- read visibility
- export-facing asset summary visibility
- no unrestricted asset mutation by default

Permissions must be enforced by API.


# ============================================================
# 18. NON-PERSONA BOUNDARY RULE
# ============================================================

The Asset API must enforce Builder-owned material boundary.

Allowed Builder-owned material assets:
- enemy sprites
- monster sprites
- unit art
- building art
- map props
- icons
- ui materials
- tilesets

Prohibited:
- Persona truth editing
- treating generic Builder material assets as Persona truth
- unrestricted Persona state mutation or capture

Approved Persona projections may be referenced only
through approved non-authoritative linkage surfaces.


# ============================================================
# 19. ERROR MODEL
# ============================================================

Asset API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- validation_blocked where applicable

Where helpful, responses should expose:
- affected_scope_summary
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 20. FINAL INTERFACE RULE
# ============================================================

The Asset API is the material asset surface
behind Asset Studio.

Core summary:

- assets are project-scoped material objects
- upload/import must be explicit
- replace/derive/variant operations must preserve lineage
- bind/unbind must be explicit
- runtime/template compatibility must be enforced
- asset usage visibility is mandatory
- non-Persona boundary is mandatory
