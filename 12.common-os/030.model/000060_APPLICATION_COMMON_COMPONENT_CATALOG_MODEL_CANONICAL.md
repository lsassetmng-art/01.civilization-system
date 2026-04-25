# APPLICATION COMMON COMPONENT CATALOG MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical metadata model for application common component families managed by CommonOS.

## Main entities
- component_catalog
- component_family_group
- component_origin_reference
- component_adoption_hint

## component_catalog role
component_catalog stores the canonical identity of a reusable component or shared base recognized by CommonOS.

## Required fields for component_catalog
- id
- component_code
- component_name
- component_class
- component_layer
- canonical_status
- canonical_owner
- description
- common_scope_note
- implementation_state
- is_active
- created_at
- updated_at

## component_class allowed values
- ui_primitive_shell
- ui_composite_feature
- presentation_utility
- non_ui_shared_base

## component_layer examples
- token
- primitive_layout
- base_control
- composite_feature
- shell_navigation
- sync_presentation
- runtime_support
- transport_contract_support

## Catalog identity rule
component_code is stable and machine-friendly.
component_name is human-readable and normalized for cross-system reuse.

## Example normalized entries
- screen_shell_common
- state_panel_common
- action_button_common
- product_card_common
- library_shelf_common
- multilingual_label_common
- multicurrency_price_display_common
- permission_guard_base
- validator_helper_set
- idempotency_service_base

## Boundary rule
The catalog stores reusable component metadata only. It does not store domain transaction truth or origin-system business canon.
