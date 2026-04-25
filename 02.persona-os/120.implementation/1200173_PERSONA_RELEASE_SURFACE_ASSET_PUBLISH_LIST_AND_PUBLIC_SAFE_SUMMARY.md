# PERSONA RELEASE SURFACE ASSET PUBLISH LIST AND PUBLIC SAFE SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_062714

purpose:
Condenses released listing semantics inside the release surface bundle.

function:
- asset-publish-list

asset-publish-list role:
- released listing surface only
- not release application owner
- not governance decision owner
- not mutable truth owner

response_required_fields:
- listing_status
- released_asset_list_or_listing_reference
- listed_at

public_safe_required_fields_per_item:
- released_asset_reference
- release_status
- release_scope
- listed_at

public_safe_optional_fields_per_item:
- display_title
- display_type
- thumbnail_reference
- release_lineage_reference
- visibility_label
- listing_cursor_reference

status_family:
- listing_available
- listing_empty
- listing_failed

status_rules:
- listing_available means released outputs exist and are available for listing
- listing_empty means no released outputs match scope and filter
- listing_failed means operational failure prevented listing generation
- listing_empty must remain distinct from listing_failed

hard_rules:
- asset-publish-list may expose released, public-safe fields only
- no candidate-only state may appear in listing
- no mutable work-state may appear in listing
- no internal approval workflow detail may appear in listing
