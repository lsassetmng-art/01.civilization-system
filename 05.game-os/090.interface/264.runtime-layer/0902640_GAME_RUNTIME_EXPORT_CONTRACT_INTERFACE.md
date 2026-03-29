# ============================================================
# GAME RUNTIME EXPORT CONTRACT INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official export contract interface of GameOS Runtime Layer.

This interface applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines what Runtime Layer must provide to:

- Builder
- export pipeline
- validation pipeline
- publish pipeline
- sync pipeline
- preview pipeline

The export contract is mandatory.
No publishable package may exist without a resolved runtime export contract.


# ============================================================
# 1. ROLE OF EXPORT CONTRACT
# ============================================================

The export contract is the formal handoff
from Builder-authored project state
to GameOS export and publish infrastructure.

It guarantees that a project is no longer ambiguous.

The export contract must freeze:

- runtime family
- runtime profile
- ruleset profile
- template profile
- compatibility profile
- required asset family set
- preview compatibility declaration
- sync candidate declaration
- export package lineage basis

Core principle:

one export package
-> one resolved runtime contract
-> one publishable execution definition


# ============================================================
# 2. REQUIRED CONTRACT IDENTITY
# ============================================================

Every runtime export contract must define:

- contract_ref
- contract_version
- project_code
- export_package_code
- game_title_code
- release_code where applicable
- runtime_family_code
- runtime_profile_code
- ruleset_profile_code
- template_profile_code where applicable
- compatibility_profile_code
- export_hash
- frozen_revision_ref
- generated_at

All of the above are required_fields.


# ============================================================
# 3. RUNTIME FAMILY RESOLUTION
# ============================================================

The contract must resolve exactly one runtime family.

Allowed:
- one contract -> one runtime family

Prohibited:
- one contract -> multiple active runtime families
- runtime family omitted
- runtime family inferred only indirectly

required_fields:
- runtime_family_code
- runtime_profile_code

compatibility_rule:
runtime_family_code and runtime_profile_code
must belong to the same approved runtime family.


# ============================================================
# 4. RULESET RESOLUTION
# ============================================================

The contract must resolve exactly one ruleset profile.

required_fields:
- ruleset_profile_code
- ruleset_version where applicable
- evaluation_order_summary
- allowed_mutation_summary
- candidate_generation_summary

compatibility_rule:
ruleset_profile_code must be approved
for runtime_family_code.

No export contract may remain ruleset-ambiguous.


# ============================================================
# 5. TEMPLATE RESOLUTION
# ============================================================

If the project is Builder-template-based,
the contract must resolve exactly one template profile.

required_fields:
- template_profile_code where applicable
- template_family_code where applicable
- template_tier where applicable
- required_block_summary
- protected_zone_summary
- override_zone_summary

compatibility_rule:
template_profile_code must be compatible with:
- runtime_family_code
- ruleset_profile_code

A template-based project with unresolved template binding
must not be exportable.


# ============================================================
# 6. REQUIRED ASSET FAMILY DECLARATION
# ============================================================

The contract must declare all required asset families.

required_fields:
- required_asset_family_summary
- resolved_asset_family_summary
- unresolved_asset_family_summary
- asset_manifest_ref
- asset_hash_summary

Examples of asset families:
- vn_presentation_assets
- enemy_pixel_assets
- unit_art_assets
- building_art_assets
- map_package_assets
- puzzle_stage_assets
- ui_template_assets

compatibility_rule:
all required asset families for the resolved runtime/template pair
must be resolved before export.

Unresolved required assets are blocking.


# ============================================================
# 7. EXPORT METADATA DECLARATION
# ============================================================

The contract must define export-facing metadata.

required_fields:
- export_hash
- export_format
- export_size_summary
- package_lineage_summary
- asset_manifest_ref
- metadata_version
- runtime_contract_hash

Export metadata must be stable enough
for validation, publish, and transfer tracking.


# ============================================================
# 8. PREVIEW COMPATIBILITY DECLARATION
# ============================================================

The contract must define preview compatibility.

required_fields:
- preview_supported
- preview_mode_summary
- mock_mode_summary
- preview_discard_rule
- preview_restricted_domain_summary

Examples:
- scene_preview
- battle_preview
- stage_preview
- map_preview
- full_flow_preview

compatibility_rule:
preview settings must comply with
Game Runtime Preview Sandbox Policy.

A contract with illegal preview binding
must not be exportable.


# ============================================================
# 9. SYNC CANDIDATE DECLARATION
# ============================================================

The contract must define which outputs may become sync candidates.

required_fields:
- save_candidate_supported
- achievement_candidate_supported
- ranking_candidate_supported
- replay_candidate_supported
- telemetry_candidate_supported
- completion_candidate_summary

compatibility_rule:
candidate declarations must comply with:
- runtime family
- ruleset profile
- sync adjudication policy

No contract may claim client-side final truth.


# ============================================================
# 10. SAVEABILITY DECLARATION
# ============================================================

The contract must define state boundary categories.

required_fields:
- saveable_state_summary
- derived_state_summary
- transient_state_summary
- prohibited_authority_state_summary

compatibility_rule:
saveability declaration must comply with:
- runtime family
- ruleset mutation policy
- sync candidate policy

A contract with ambiguous state boundary is invalid.


# ============================================================
# 11. PERSONA BOUNDARY DECLARATION
# ============================================================

The contract must declare Persona usage boundaries.

required_fields:
- persona_projection_usage_summary
- prohibited_persona_overlap_summary
- cast_projection_ref_summary where applicable

compatibility_rule:
export contract may reference approved Persona projections only.

The contract must not imply:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation


# ============================================================
# 12. COMMERCE / ENTITLEMENT BOUNDARY DECLARATION
# ============================================================

The contract must declare platform boundary compliance.

required_fields:
- entitlement_dependency_summary
- commerce_dependency_summary
- prohibited_finality_summary

compatibility_rule:
the contract may declare dependency on entitlement presence,
but may not finalize entitlement issuance or commerce truth.

This boundary is mandatory.


# ============================================================
# 13. BUILDER HANDOFF REQUIREMENT
# ============================================================

Builder must hand off enough information
to construct the export contract.

Builder-side handoff must provide:

required_fields:
- project_code
- frozen_revision_ref
- runtime_profile_code
- ruleset_profile_code
- template_profile_code where applicable
- asset_manifest_ref
- validation_result_ref
- export_request_ref

Builder must not fabricate export contract contents
outside approved runtime semantics.


# ============================================================
# 14. VALIDATION HANDOFF REQUIREMENT
# ============================================================

The contract must be consumable by validation pipeline.

required_fields:
- editing_validation_ref where applicable
- export_validation_ref
- publish_validation_ref where applicable
- blocking_count
- warning_count
- validation_timestamp

A contract with unresolved blocking findings
must not advance to publish submission.


# ============================================================
# 15. PUBLISH HANDOFF REQUIREMENT
# ============================================================

The contract must be consumable by publish pipeline.

required_fields:
- seller_code
- marketplace_product_code where applicable
- game_title_code
- release_code
- runtime_contract_hash
- moderation_relevant_summary
- rollout_relevant_summary

compatibility_rule:
publish pipeline must be able to determine:
- what this package is
- how it runs
- what it depends on
- what it may emit
- what boundaries it must respect


# ============================================================
# 16. TRANSFER / CONTINUITY REQUIREMENT
# ============================================================

The contract must be continuity-safe for future transfer scenarios.

required_fields:
- game_title_code
- release_code
- export_hash
- runtime_contract_hash
- entitlement_continuity_summary
- publisher_reassignment_compatibility_summary

compatibility_rule:
runtime export contract must not break
approved title transfer and entitlement continuity assumptions.


# ============================================================
# 17. INTERFACE OUTPUT SHAPE
# ============================================================

A valid runtime export contract must be representable
as a machine-readable and human-readable object.

Minimum sections:

- identity
- runtime_resolution
- ruleset_resolution
- template_resolution
- asset_resolution
- preview_compatibility
- sync_candidate_declaration
- state_boundary_declaration
- persona_boundary_declaration
- commerce_boundary_declaration
- validation_handoff
- publish_handoff
- continuity_handoff

Each section is mandatory unless explicitly marked not_applicable.


# ============================================================
# 18. BLOCKING CONDITIONS
# ============================================================

The following must be blocking:

- runtime family unresolved
- runtime profile unresolved
- ruleset unresolved
- required asset family unresolved
- illegal preview binding
- ambiguous saveability boundary
- prohibited Persona overlap
- client-side finality claim
- incompatible compatibility profile
- invalid validation handoff
- invalid publish handoff

Any of these makes the export contract invalid.


# ============================================================
# 19. FINAL INTERFACE RULE
# ============================================================

GameOS Runtime Layer must always export
through a resolved runtime export contract.

Core summary:

- one export package must resolve to one runtime contract
- runtime, ruleset, template, and asset families must be explicit
- preview and sync boundaries must be explicit
- Persona and commerce boundaries must be explicit
- invalid or ambiguous export contracts are prohibited
