# ============================================================
# CITY LOCAL MAP READ INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
scope: city-local-map-read-interface
component: city-local-map-read-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical read projection contract
for city_map_screen
and city-local navigation.

This interface aggregates canonical truth
without becoming source of truth.

It exists to prevent UI code
from independently reconstructing:

- district identity
- facility identity
- placement identity
- route readiness


# ============================================================
# 2. SOURCE TRUTH
# ============================================================

The read projection may consume:

- canonical city identity
- Civilization Territory Record
- Civilization District Registry
- Civilization Facility Registry
- facility type master
- canonical UI target mapping
- Civilization Active Facility Placement

Seed and builder draft models
are not active map truth.


# ============================================================
# 3. REQUEST CONTEXT
# ============================================================

request_context:
- nation_id or canonical nation context
- city_code
- source_context where applicable
- viewport_context where applicable
- language_code where applicable


# ============================================================
# 4. TOP LEVEL OUTPUT
# ============================================================

city_local_map_read:
- city
- districts
- facilities
- readiness
- partial_data_reasons
- projection_version


# ============================================================
# 5. CITY OUTPUT
# ============================================================

city:
- city_code
- city_name where available
- territory_code where available
- city_status where available


# ============================================================
# 6. DISTRICT OUTPUT
# ============================================================

district item:
- district_id
- district_registry_id
- district_code
- district_name
- district_status
- district_structure_type
- territory_code
- boundary_ref
- zone_policy_ref where available
- route_readiness


# ============================================================
# 7. DISTRICT ID NORMALIZATION
# ============================================================

For city-local routing:

district_id
is the canonical route alias
for district_registry_id.

district_id must resolve one-to-one
to district_registry_id.

The projection must not emit:

- array-index district ids
- enum-value district ids
- UI-generated district ids
- seed-derived district ids


# ============================================================
# 8. FACILITY OUTPUT
# ============================================================

facility item:
- facility_id
- facility_registry_id
- facility_type
- facility_name where available
- facility_status
- canonical_ui_target
- territory_code
- district_id where applicable
- active_facility_placement_id
- placement_x
- placement_y
- rotation_code where applicable
- placement_status
- route_readiness


# ============================================================
# 9. FACILITY ID NORMALIZATION
# ============================================================

For facility UI routing:

facility_id
is the canonical route alias
for facility_registry_id.

facility_id must resolve one-to-one
to facility_registry_id.

facility_id must not create
a second independent facility identity.

This preserves compatibility
with the existing Facility UI contract
while keeping Facility Registry
as canonical facility truth.


# ============================================================
# 10. FACILITY ROUTE READINESS
# ============================================================

facility route_readiness is active only when:

- facility_registry_id resolves
- facility_type resolves
- canonical_ui_target resolves
- active facility placement resolves
- city context resolves

If required identity or placement truth
is unresolved:

route_readiness: blocked

The UI must not fabricate facility_id.


# ============================================================
# 11. DISTRICT ROUTE READINESS
# ============================================================

district route_readiness is active only when:

- district_registry_id resolves
- city binding resolves
- territory binding resolves
- required district read context resolves

Where field-level district detail
is not yet supported,
the projection must expose:

- partial_data

rather than inventing detail fields.


# ============================================================
# 12. PARTIAL DATA RULE
# ============================================================

readiness values:
- active
- partial_data
- blocked

partial_data must be explicit.

A projection must not claim fully active
when required downstream detail
cannot be resolved.

A blocked facility or district
must remain visible only where useful,
but must not expose a false operational route.


# ============================================================
# 13. READ MODEL RULE
# ============================================================

This interface is projection-only.

It must not:

- create districts
- create facilities
- move facilities
- finalize builder drafts
- mutate territory truth
- overwrite registry truth

Read models must be reproducible
from canonical truth.


# ============================================================
# 14. CITY MAP ROUTE COMPATIBILITY
# ============================================================

Canonical city-map routes remain:

city_map_screen
-> facility tap
-> facility_overview_screen

city_map_screen
-> district tap
-> district_detail_information_screen

city_map_screen
-> empty area tap
-> city_builder_start_screen

Only route-ready canonical targets
may activate facility or district taps.


# ============================================================
# 15. FACILITY ROUTE PARAM CONTRACT
# ============================================================

When opening facility_overview_screen,
the read projection must provide:

- facility_id
- facility_type
- canonical_ui_target

and where applicable:

- district_id
- source_context

facility_id must already be normalized
to facility_registry_id identity.


# ============================================================
# 16. FAILURE RULE
# ============================================================

Missing canonical truth must result in:

- partial_data
or
- blocked

depending on whether the missing data
is optional or required.

Missing truth must never result in:

- fabricated IDs
- inferred active coordinates
- seed-derived active facility instances
- silent route activation


# ============================================================
# 17. FINAL RULE
# ============================================================

City map UI consumes
city-local canonical projection.

City map UI does not become
a source of district,
facility,
or placement truth.
