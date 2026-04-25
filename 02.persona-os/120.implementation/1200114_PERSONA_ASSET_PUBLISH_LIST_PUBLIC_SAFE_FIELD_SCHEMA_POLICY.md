# PERSONA ASSET PUBLISH LIST PUBLIC SAFE FIELD SCHEMA POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Closes residual queue item 5 by fixing the public-safe field schema for asset-publish-list.

policy_decision:
asset-publish-list exposes only released, public-safe listing fields.

public_safe_required_fields:
- released_asset_reference
- release_status
- release_scope
- listed_at

public_safe_optional_fields:
- display_title
- display_type
- thumbnail_reference
- release_lineage_reference
- visibility_label
- listing_cursor_reference

forbidden_listing_fields:
- internal approval workflow detail
- mutable work-state detail
- candidate-only state detail
- private storage path
- private signing material
- hidden policy internals

hard_rules:
- only publish_apply_succeeded outputs may appear
- listing must stay downstream from release application
- listing fields must remain presentation-safe and release-safe

