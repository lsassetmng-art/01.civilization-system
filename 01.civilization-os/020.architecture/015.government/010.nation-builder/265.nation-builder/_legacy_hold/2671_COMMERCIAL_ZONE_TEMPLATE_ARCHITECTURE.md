# ============================================================
# COMMERCIAL ZONE TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: zone-template
component: commercial-zone-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This template defines a commercial zone preset.

It is intended for areas where retail, trade,
customer-facing services, and marketplace-oriented
company activity are concentrated.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

zone_type:
commercial_zone

template_summary:
Zone optimized for retail, commerce, sales activity,
public-facing business operation, and dense customer traffic.

density_posture:
medium_to_high

public_access_posture:
open

event_posture:
commercial_event_friendly


# ============================================================
# 3. ALLOWED COMPANY TYPES
# ============================================================

allowed_company_types:
- retail_company
- game_company
- software_company
- culture_arts_company
- education_company


# ============================================================
# 4. ALLOWED SITE / STORE TYPES
# ============================================================

allowed_site_store_types:
- retail_store
- office
- service_site
- gallery_site


# ============================================================
# 5. DEFAULT RESTRICTIONS
# ============================================================

default_restrictions:
- public_open_allowed
- high_traffic_event_allowed
- exhibition_event_allowed

not_recommended:
- religion-centered exclusive use
- highly restricted state-only operations


# ============================================================
# 6. GOVERNANCE NOTES
# ============================================================

governance_notes:
Commercial zones support spontaneous company opening
without pre-approval, subject to compatibility validation
and post-opening nation notification.


# ============================================================
# 7. VALIDATION NOTES
# ============================================================

validation_notes:
- allowed company types must not be empty
- allowed site/store types must not be empty
- restrictions must remain internally consistent
- zone must permit at least one practical opening pattern
