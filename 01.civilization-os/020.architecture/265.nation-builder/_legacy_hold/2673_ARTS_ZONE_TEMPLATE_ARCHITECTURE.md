# ============================================================
# ARTS ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: arts-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines an arts zone preset.

It is intended for areas focused on creative production,
exhibition, screening, and public cultural activity.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
arts_zone

template_summary:
Zone optimized for art production, galleries, creative studios,
public exhibition, screening, and cultural event circulation.

density_posture:
medium

public_access_posture:
open

event_posture:
high_cultural_event_support


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- culture_arts_company
- game_company
- software_company
- education_company


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- gallery_site
- studio
- service_site
- office


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- public_open_allowed
- exhibition_event_allowed
- screening_event_allowed
- high_traffic_event_allowed

not_recommended:
- closed state-only facility pattern
- religion-exclusive use


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Arts zones should be compatible with public cultural access
and event-oriented operational patterns.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- at least one event-capable restriction set should exist
- gallery or studio class site should be allowed
- arts zone must not be configured as fully closed
