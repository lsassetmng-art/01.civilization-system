# ============================================================
# CIVILIZATION ACTIVE FACILITY PLACEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
scope: infrastructure-placement
component: civilization-active-facility-placement

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define canonical active placement truth
for a facility registry instance
inside city-local Civilization space.

This model does not redefine
facility identity.

Canonical facility identity remains:

- facility_registry_id

from the Civilization Facility Registry model.


# ============================================================
# 2. MODEL TYPE
# ============================================================

model_type:
- active facility placement truth model


# ============================================================
# 3. PRIMARY KEY
# ============================================================

primary_key:
- active_facility_placement_id


# ============================================================
# 4. NATURAL KEY
# ============================================================

natural_key:
- facility_registry_id
- placement_version


# ============================================================
# 5. FIELDS
# ============================================================

fields:
- active_facility_placement_id
- facility_registry_id
- placement_version
- nation_id
- city_code
- district_registry_id where applicable
- territory_code
- region_ref where applicable
- placement_x
- placement_y
- rotation_code
- placement_status
- source_draft_facility_placement_id where applicable
- source_state_version
- effective_from
- effective_until
- created_at
- updated_at


# ============================================================
# 6. STATUS
# ============================================================

placement_status_enum:
- active
- moved
- suspended
- removed
- archived


# ============================================================
# 7. FACILITY IDENTITY RULE
# ============================================================

facility_registry_id must resolve
to the canonical Civilization Facility Registry.

This placement model must not create
a second facility identity.

The UI route parameter facility_id
must normalize to facility_registry_id
through the city-local read contract.


# ============================================================
# 8. CITY AND DISTRICT BINDING
# ============================================================

Every active placement must resolve to:

- nation_id
- city_code
- territory_code

district_registry_id is required
when the placement is inside
a canonical active district.

district_registry_id must resolve
to the Civilization District Registry.


# ============================================================
# 9. COORDINATE RULE
# ============================================================

placement_x and placement_y
represent approved active placement
inside the referenced city-local spatial context.

Coordinates must not be inferred
from:

- facility seed order
- density values
- UI card position
- array index
- default profiles

region_ref may further constrain
the applicable map region
where the canonical spatial model requires it.


# ============================================================
# 10. VERSION RULE
# ============================================================

placement_version must increase
when canonical placement changes.

At most one placement version
for a facility_registry_id
may be current with placement_status active.

Previous placement history
must remain distinguishable
from the current placement.


# ============================================================
# 11. DRAFT SOURCE RULE
# ============================================================

source_draft_facility_placement_id
may reference
NATION_DRAFT_FACILITY_PLACEMENT
when active truth originated
from a builder draft.

A draft placement is not active truth
until explicit finalization succeeds.


# ============================================================
# 12. SEED RULE
# ============================================================

Initial public facility placement models
and major-city facility assignment models
are seed/default inputs only.

They must not automatically produce:

- facility_registry_id
- active_facility_placement_id
- district_registry_id
- active coordinates


# ============================================================
# 13. TRUTH BOUNDARY
# ============================================================

Active facility placement truth belongs to
CivilizationOS city-local spatial truth.

Facility registry truth remains owned by
the existing Civilization Facility Registry.


# ============================================================
# 14. FINAL RULE
# ============================================================

A facility becomes map-tappable
only when canonical facility identity
and valid active placement
can both be resolved.
