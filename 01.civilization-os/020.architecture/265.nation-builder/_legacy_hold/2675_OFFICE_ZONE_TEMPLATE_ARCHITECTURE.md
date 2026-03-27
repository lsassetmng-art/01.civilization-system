# ============================================================
# OFFICE ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: office-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines an office zone preset.

It is intended for headquarters, branches,
administrative work, financial services,
and non-retail company concentration.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
office_zone

template_summary:
Zone optimized for administration, headquarters,
branches, professional services, and structured business activity.

density_posture:
medium_to_high

public_access_posture:
semi_open

event_posture:
low_to_moderate_event_support


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- software_company
- investment_company
- education_company
- architectural_design_company
- interior_company
- culture_arts_company


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- headquarters
- branch
- office
- studio
- service_site


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- public_open_allowed

not_recommended:
- heavy late-night entertainment use
- temple-centered exclusive use
- dense mass-retail concentration


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Office zones support structured company operation
with lower emphasis on storefront traffic.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- at least one office-class site must exist
- opening patterns should remain non-retail viable
- office zone should not conflict with governance usage assumptions
