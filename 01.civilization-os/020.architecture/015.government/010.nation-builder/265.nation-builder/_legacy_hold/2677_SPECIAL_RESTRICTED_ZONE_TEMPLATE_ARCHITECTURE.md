# ============================================================
# SPECIAL RESTRICTED ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: special-restricted-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines a special restricted zone preset.

It is intended for controlled, limited, or policy-sensitive
operational areas that require explicit restriction posture.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
special_restricted_zone

template_summary:
Zone optimized for tightly controlled usage,
policy-sensitive operation, and restricted compatibility.

density_posture:
low_to_medium

public_access_posture:
restricted

event_posture:
limited_event_support


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- system_limited_only


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- allocated_use
- service_site
- office


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- late_night_operation_allowed

not_recommended:
- general public retail use
- open cultural crowd concentration
- unrestricted religious expansion


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Special restricted zones exist for nation-configurable
exceptions, controlled sectors, or state-sensitive operations.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- access posture must remain explicit
- general-purpose opening should not be silently enabled
- restricted logic must remain consistent with company scope
