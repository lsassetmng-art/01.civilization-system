# ============================================================
# FINANCIAL SERVICE CONTEXT BANNER MODEL
# ============================================================

status: canonical
layer: model
scope: financial-and-direct-store-services
component: financial-service-context-banner

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED BANNER FIELDS
# ============================================================

banner_fields:
- service_name
- institution_name
- building_name
- tenant_name
- floor_or_zone
- official_badge
- nation_label
- service_notice


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- banner is optional for direct single-function entry
- banner is recommended for tenant entry
- banner must not obstruct core service actions
- banner may include return-to-building shortcut


# ============================================================
# 3. FINAL RULE
# ============================================================

Context should be visible
without duplicating service logic.
