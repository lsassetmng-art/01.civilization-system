# ============================================================
# CIVILIZATION NATION ZONING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official nation zoning architecture
inside CivilizationOS.

This architecture covers:
- nation-defined business/opening zones
- allowed company types by zone
- allowed site/store types by zone
- restriction rules by zone
- compatibility checks for opening


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Zoning is nation-defined in advance.

A company does not submit a prior nation application,
but may only open if:
- the zone exists
- the zone is active
- the company/site type is allowed
- relevant restrictions are satisfied

Core principle:

zoning is preconfigured,
opening is compatibility-checked


# ============================================================
# 2. ZONE TYPE PRINCIPLE
# ============================================================

Recommended zone types:
- commercial_zone
- education_zone
- arts_zone
- religious_zone
- office_zone
- mixed_use_zone
- special_restricted_zone

A nation may define its own active subset.


# ============================================================
# 3. ALLOWANCE PRINCIPLE
# ============================================================

A zone should define at minimum:
- allowed company types
- allowed site/store types
- optional operating restrictions

This must be explicit and DB-controlled.


# ============================================================
# 4. RESTRICTION PRINCIPLE
# ============================================================

Restrictions may include:
- public_open_allowed
- late_night_operation_allowed
- high_traffic_event_allowed
- religious_activity_allowed
- screening_event_allowed
- exhibition_event_allowed

These restrictions must be explicit.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Nation zoning in CivilizationOS must be:
- nation-configurable
- zone-type-aware
- company-type-aware
- site-type-aware
- restriction-aware
