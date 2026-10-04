# CITY LOCAL ACTIVE TRUTH DDL EXACT DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact PostgreSQL DDL design for R13 city-local active truth.

This design is executable SQL preparation only.
It does not authorize DB connection or execution.

## 2. Canonical Authorities

This DDL must preserve:

- CivilizationOS DB owner boundary
- CIVILIZATION_DATABASE_URL
- civilization_os schema
- public schema prohibition
- Territory Record identity
- Facility Registry identity
- District Registry identity
- Active Facility Placement identity
- City Builder staged/active separation
- canonical Civilization transaction boundary

## 3. Physical Type Decision

For this R13 implementation target:

- canonical identifier columns use uuid
- code and enum-like fields use text
- record versions use integer
- source_state_version uses bigint
- coordinates and rotation use numeric
- system timestamps use timestamptz

UUID values are supplied by the canonical server mutation boundary.
This DDL introduces no extension dependency and no automatic UUID generator.

## 4. DDL Dependency Order

Exact order:

1. create civilization_os schema when absent
2. territory_record
3. facility_registry
4. district_registry
5. active_facility_placement
6. active-placement partial unique index
7. verification

No public-schema object is created.

## 5. territory_record

Canonical PK:

- territory_record_id

Canonical natural key:

- nation_id
- territory_code

Physical fields preserve the Territory Record model:

- territory_record_id uuid
- nation_id uuid
- territory_code text
- territory_name text
- territory_status text
- territory_class text
- controlling_authority_scope text
- effective_from timestamptz
- effective_until timestamptz nullable
- created_at timestamptz
- updated_at timestamptz

Allowed territory_status:

- active
- disputed
- suspended
- lost
- archived

## 6. facility_registry

Canonical PK:

- facility_registry_id

Canonical natural key:

- facility_domain
- facility_code

Physical fields preserve the Facility Registry model:

- facility_registry_id uuid
- facility_domain text
- facility_code text
- facility_name text
- facility_status text
- territory_code text
- owner_nation_id uuid
- facility_class text
- created_at timestamptz
- updated_at timestamptz

Allowed facility_status:

- active
- inactive
- damaged
- closed
- archived

No territory FK is inferred from owner_nation_id.
Facility ownership and physical placement are distinct truths.

## 7. district_registry

Canonical PK:

- district_registry_id

Canonical natural key:

- nation_id
- city_code
- district_code

Fields:

- district_registry_id uuid
- nation_id uuid
- city_code text
- district_code text
- district_name text
- district_status text
- district_type text
- territory_code text
- boundary_ref text nullable
- zone_policy_ref text nullable
- source_state_version bigint
- created_at timestamptz
- updated_at timestamptz

Allowed district_status:

- active
- inactive
- restricted
- damaged
- closed
- archived

District territory binding is enforced by:

- nation_id
- territory_code

referencing Territory Record natural identity.

No second city registry is created.

## 8. active_facility_placement

Canonical PK:

- active_facility_placement_id

Canonical version key:

- facility_registry_id
- placement_version

Fields:

- active_facility_placement_id uuid
- facility_registry_id uuid
- placement_version integer
- nation_id uuid
- city_code text
- district_registry_id uuid nullable
- territory_code text
- region_ref text nullable
- x numeric
- y numeric
- rotation numeric nullable
- placement_status text
- source_draft_facility_placement_id uuid nullable
- source_state_version bigint
- effective_from timestamptz
- effective_until timestamptz nullable
- created_at timestamptz
- updated_at timestamptz

Allowed placement_status:

- active
- moved
- suspended
- removed
- archived

## 9. Active Placement Integrity

The database enforces:

- Facility Registry FK
- Territory Record natural-key FK
- optional District Registry binding FK
- unique facility_registry_id + placement_version
- positive placement_version
- positive source_state_version
- at most one current active placement per facility_registry_id

Current active means:

- placement_status = active
- effective_until IS NULL

## 10. District Binding Integrity

When district_registry_id is present, active placement must match the same:

- nation_id
- city_code
- territory_code

The physical FK uses the composite district binding identity to fail closed.

## 11. City Identity Boundary

No R13 city table is created.

nation_id + city_code must be validated against existing active city lineage
by the canonical server transaction/read boundary.

A physical city FK is deferred until the active city physical owner/table
is explicitly assigned by canonical design.

## 12. Facility Type / UI Mapping Boundary

No duplicate facility type or UI mapping table is introduced.

Facility type and canonical UI target remain external canonical dependencies
resolved by the server boundary.

## 13. Stale Write Protection

DDL provides:

- placement version uniqueness
- positive source_state_version
- one-current-active-placement invariant

Canonical finalization additionally must:

1. lock the target Facility Registry row
2. load current placement state
3. compare expected source_state_version
4. reject stale or non-monotonic placement_version
5. close/supersede prior placement when required
6. insert the new active version
7. perform audit/outbox steps
8. commit atomically

The server transaction boundary is required because monotonic concurrency
cannot be safely inferred from a standalone CHECK constraint.

## 14. Seed Boundary

This DDL inserts no:

- world seed
- city seed
- district seed
- facility seed
- placement seed
- default coordinate

Seed/default data must never become active truth automatically.

## 15. Verify

Verification must cover:

- schema existence
- four required tables
- PK presence
- FK presence
- natural unique constraints
- status constraints
- no public-schema duplicate
- duplicate canonical natural keys
- multiple current active placement detection
- placement version integrity
- source-state monotonicity audit

## 16. Rollback

Rollback is repair-first.

The prepared destructive rollback script refuses to drop the four relations
when canonical rows exist.

It does not drop the civilization_os schema.

Destructive rollback requires a separate explicit DB GO.

## 17. Phase Boundary

This DDL design does not widen the existing execution phase 1 DB scope.

Actual application belongs to a separate R13 DB execution gate.

## 18. Acceptance

Accepted when:

- exact four-table DDL exists
- dependency order is fixed
- PK/FK/natural keys are fixed
- active placement uniqueness is fixed
- stale-write transaction posture is fixed
- verify SQL exists
- guarded rollback SQL exists
- no DB connection occurred during design
