# APP_COMMON SCHEMA DDL CANONICAL

status: canonical
layer: model
schema: app_common

## Schema role
The app_common schema stores shared mutable metadata required by CommonOS.

## Canonical table groups
- theme_registry
- design_token_set
- design_token_value
- component_catalog
- component_variant_catalog
- component_slot_rule
- locale_key
- locale_translation
- copy_template
- screen_template
- form_definition_metadata
- notification_template
- export_template
- help_template
- sync_policy
- retry_policy
- queue_visual_rule
- feature_presentation_rule
- accessibility_preset
- attachment_policy
- client_capability_registry

## Common structural columns
- id
- code
- version_no
- sort_order
- is_active
- created_at
- updated_at

## Exclusion rule
No domain transaction truth, secrets, pricing logic, entitlement logic, access logic, or AI prompt canon may be stored here.
