# ============================================================
# SERVICE CONTEXT BANNER MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: service-context-banner

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the context banner
shown when entering a service UI
from the field map.


# ============================================================
# 2. BANNER FIELDS
# ============================================================

banner_fields:
- service_name
- building_name
- tenant_name
- floor_or_zone
- operator_name
- nation_label
- official_badge
- facility_state_notice
- campaign_notice


# ============================================================
# 3. DISPLAY RULES
# ============================================================

display_rules:
- banner is optional for single-function direct entry
- banner is recommended for tenant-selected entry
- banner must not block service usage
- banner may provide back-link to building or field map
- banner may expose related services in the same building


# ============================================================
# 4. FINAL RULE
# ============================================================

Context should be visible
without becoming structural duplication.
