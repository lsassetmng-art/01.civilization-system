# ============================================================
# CIVILIZATION RETAIL DIGITAL PRODUCT MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for retail digital products
inside CivilizationOS.


# ============================================================
# 1. PRODUCT CATALOG MODELS
# ============================================================

## RETAIL_DIGITAL_PRODUCT
core_fields:
- retail_digital_product_id
- seller_company_ref
- product_type
- origin_os
- source_ref
- runtime_type
- integration_mode
- entitlement_type
- license_rule_ref
- moderation_status
- publish_status
- created_at
- updated_at

product_type examples:
- game_connected
- game_standalone
- businessos_app_full_extension
- businessos_app_db_linked
- standalone_app_package
- app_background_asset
- theme_asset
- persona_snapshot_product
- persona_costume_product

origin_os examples:
- GameOS
- BusinessOS
- PersonaOS
- CivilizationNative
- StandaloneRuntime

integration_mode examples:
- none
- db_only
- db_and_auth
- full_extension


# ============================================================
# 2. PRODUCT ENTITLEMENT / LICENSE MODELS
# ============================================================

## PRODUCT_ENTITLEMENT
core_fields:
- product_entitlement_id
- retail_digital_product_id
- holder_type
- holder_ref
- entitlement_status
- entitlement_scope
- acquired_at
- expires_at
- created_at
- updated_at

## PRODUCT_LICENSE_RULE
core_fields:
- product_license_rule_id
- retail_digital_product_id
- transferability_mode
- resale_mode
- revocation_mode
- age_gate_mode
- compatibility_rule_summary
- rule_status
- created_at
- updated_at


# ============================================================
# 3. APP INTEGRATION PROFILE MODELS
# ============================================================

## APP_INTEGRATION_PROFILE
core_fields:
- app_integration_profile_id
- retail_digital_product_id
- integration_mode
- uses_businessos_flag
- uses_businessos_db_flag
- uses_businessos_auth_flag
- uses_businessos_ui_flag
- delegated_policy_os
- required_runtime_summary
- created_at
- updated_at

delegated_policy_os examples:
- none
- BusinessOS
- GameOS
- PersonaOS

## APP_CAPABILITY_SUMMARY
core_fields:
- app_capability_summary_id
- retail_digital_product_id
- capability_domain
- capability_summary
- sensitivity_summary
- created_at
- updated_at

capability_domain examples:
- data_access
- auth
- ui_extension
- export
- runtime_dependency


# ============================================================
# 4. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for retail digital products inside CivilizationOS.

Core summary:

- product category is explicit
- origin OS is explicit
- entitlement and license are explicit
- integration profile is explicit
- detailed BusinessOS access-control models are not duplicated here
