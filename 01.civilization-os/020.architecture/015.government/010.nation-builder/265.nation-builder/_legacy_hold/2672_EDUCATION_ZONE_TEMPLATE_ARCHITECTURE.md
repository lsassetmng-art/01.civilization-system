# ============================================================
# EDUCATION ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: education-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines an education zone preset.

It is intended for areas centered on learning,
schools, curriculum activity, and educational services.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
education_zone

template_summary:
Zone optimized for schools, learning services,
curriculum delivery, and knowledge-support facilities.

density_posture:
medium

public_access_posture:
semi_open

event_posture:
education_event_friendly


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- education_company
- software_company
- culture_arts_company


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- school_site
- office
- service_site


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- public_open_allowed
- exhibition_event_allowed

not_recommended:
- excessive late-night concentration
- heavy traffic entertainment emphasis


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Education zones should support strong public service posture
and controlled compatibility with adjacent commercial activity.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- at least one school-compatible site type must exist
- allowed companies should remain education-centered
- restriction profile should not invalidate school operation
