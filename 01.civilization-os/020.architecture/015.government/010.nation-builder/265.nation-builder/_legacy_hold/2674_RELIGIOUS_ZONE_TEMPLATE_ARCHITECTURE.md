# ============================================================
# RELIGIOUS ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: religious-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines a religious zone preset.

It is intended for temple-centered, doctrine-centered,
ritual-centered, and religious community activities.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
religious_zone

template_summary:
Zone optimized for temple operation, doctrine activity,
ritual performance, and religious public gathering.

density_posture:
low_to_medium

public_access_posture:
controlled_open

event_posture:
religious_event_support


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- religious_corporation


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- temple_site
- service_site


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- religious_activity_allowed
- public_open_allowed

not_recommended:
- unrelated dense retail concentration
- general entertainment-driven traffic


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Religious zones should preserve doctrine and ritual suitability
while remaining explicitly configurable by nation policy.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- temple-compatible site type must exist
- religious activity restriction must be enabled
- unrelated company allowances should not dilute zone identity
