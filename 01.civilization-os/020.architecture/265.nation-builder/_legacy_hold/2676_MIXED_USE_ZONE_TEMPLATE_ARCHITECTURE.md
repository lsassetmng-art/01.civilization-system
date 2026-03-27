# ============================================================
# MIXED USE ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: mixed-use-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines a mixed-use zone preset.

It is intended for areas where multiple company types
and multiple site patterns coexist in balanced form.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
mixed_use_zone

template_summary:
Zone optimized for coexistence of retail, office,
education, and cultural activity in a shared area.

density_posture:
medium

public_access_posture:
open

event_posture:
moderate_multi-purpose_event_support


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- retail_company
- education_company
- culture_arts_company
- software_company
- game_company
- religious_corporation


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- office
- retail_store
- gallery_site
- school_site
- studio
- service_site
- temple_site


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- public_open_allowed
- exhibition_event_allowed
- screening_event_allowed

not_recommended:
- highly exclusive single-purpose lock-in
- fully closed state-only configuration


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Mixed-use zones are recommended as flexible builder defaults
and are especially suitable for hybrid nation templates.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- at least two distinct company families should be supported
- at least two distinct site/store classes should be supported
- restriction profile must not collapse mixed-use viability
