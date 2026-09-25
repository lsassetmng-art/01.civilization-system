# ============================================================
# CIVILIZATION DISTRICT REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
scope: city-local-active-truth
component: civilization-district-registry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical registry
for active district instances
inside existing CivilizationOS cities.

This model defines district instance truth.

It does not replace:

- city canonical identity
- territory record truth
- district structure type enum masters
- zoning policy truth
- builder draft state


# ============================================================
# 2. MODEL TYPE
# ============================================================

model_type:
- district truth model


# ============================================================
# 3. PRIMARY KEY
# ============================================================

primary_key:
- district_registry_id


# ============================================================
# 4. NATURAL KEY
# ============================================================

natural_key:
- nation_id
- city_code
- district_code


# ============================================================
# 5. FIELDS
# ============================================================

fields:
- district_registry_id
- nation_id
- city_code
- district_code
- district_name
- district_status
- district_structure_type
- territory_code
- boundary_ref
- zone_policy_ref where applicable
- source_state_version
- created_at
- updated_at


# ============================================================
# 6. STATUS
# ============================================================

district_status_enum:
- active
- inactive
- restricted
- damaged
- closed
- archived


# ============================================================
# 7. IDENTITY RULE
# ============================================================

district_registry_id
is the canonical persistent identity
for an active district instance.

The UI route parameter district_id
is a route-level identity alias
for district_registry_id.

district_id must not create
a second independent identity domain.

A district structure enum value
must never be treated
as a district instance identity.


# ============================================================
# 8. CITY BINDING RULE
# ============================================================

Every active district must resolve to:

- one canonical nation context
- one canonical city_code
- one canonical territory_code

Existing nation-city default profiles
may propose district structure types,
but they must not instantiate districts
by themselves.


# ============================================================
# 9. SPATIAL RULE
# ============================================================

boundary_ref must point to
an approved spatial or boundary representation.

District boundaries must not be inferred
from:

- seed density
- default profiles
- district structure enum values
- UI-local geometry

If canonical boundary detail is unavailable,
the district remains partial_data
for map purposes.


# ============================================================
# 10. TERRITORY RULE
# ============================================================

territory_code must resolve through
the canonical Civilization Territory Record model.

This registry must not create
a competing territory identity layer.


# ============================================================
# 11. TRUTH BOUNDARY
# ============================================================

District instance truth belongs to
CivilizationOS city-local active truth.

Builder draft district planning
remains draft state
until explicit finalization promotes it
into this canonical registry.


# ============================================================
# 12. FINAL RULE
# ============================================================

No district_id may be fabricated
from:

- city defaults
- UI position
- array index
- seed order
- district structure type

A district is operationally addressable
only after district_registry_id exists.
