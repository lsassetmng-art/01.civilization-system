# PERSONA ASSET PUBLISH LIST FINAL CONTRACT AND PUBLIC SAFE FIELD SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212312

purpose:
Condenses the final request, response, and public-safe field interpretation for asset-publish-list.

request_optional_fields:
- list_scope
- filter_context
- pagination_reference

request_core_rules:
- list_scope must remain explicit when listing visibility differs by policy
- filter_context may narrow released outputs only
- pagination_reference must not bypass release visibility policy

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
- listing_available means released outputs exist and are available for public-safe listing
- listing_empty means no released outputs match the list scope and filter
- listing_failed means operational failure prevented listing generation
- listing_empty must remain distinct from listing_failed

external_response_rule:
asset-publish-list may expose released, public-safe listing fields only.
It must not expose mutable work-state, candidate-only state, or internal approval workflow detail.

