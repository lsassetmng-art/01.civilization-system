# R13 NATION AND TERRITORY BOOTSTRAP DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the R13 CivilizationOS nation identity and
nation / territory bootstrap boundary.

This design resolves the remaining physical nation identity gap
before canonical city provisioning.

This document prepares design and SQL only.

It does not authorize database mutation.

## 2. Existing Canonical Basis

Existing CivilizationOS canon establishes:

- Territory Record is CivilizationOS canonical statecraft truth
- Territory Record natural identity is nation_id + territory_code
- Territory Record status includes active, disputed, suspended,
  lost, and archived
- the Initial Nation Set is canonical seed-world planning truth
- Aurelia is preserved as a dismantled historical state
- active major-nation world planning and runtime navigation already exist

However, the existing source material does not establish that:

- seed-world symbolic nation keys are physical DB nation_code values
- R11 navigation codes are canonical DB nation_code values
- any seed-world nation has a preassigned canonical UUID
- personaos.nation is the CivilizationOS nation owner

Therefore no such mapping may be inferred.

## 3. Canonical Nation Identity Owner

R13 assigns the CivilizationOS physical nation identity owner to:

- civilization.nation_registry

This relation owns canonical CivilizationOS nation identity.

It does not replace the narrative / world-design source documents.

It provides the physical identity to which canonical operational
CivilizationOS records bind.

## 4. nation_registry Physical Model

Primary key:

- nation_id

Natural identity:

- nation_code

Fields:

- nation_id uuid
- nation_code text
- nation_name text
- nation_status text
- source_state_version bigint
- effective_from timestamptz
- effective_until timestamptz nullable
- created_at timestamptz
- updated_at timestamptz

Allowed R13 nation_status:

- active
- inactive
- dismantled
- archived

These are CivilizationOS R13 physical lifecycle values.

They are not an alias for PersonaOS nation lifecycle values.

Current active nation means:

- nation_status = active
- effective_from <= current transaction time
- effective_until IS NULL

## 5. UUID Boundary

nation_id is an explicit canonical UUID supplied by the approved
server/operator mutation boundary.

R13 does not:

- hash a nation code into UUID
- cast a seed key into UUID
- generate nation UUID from navigation data
- reuse personaos.nation_id automatically
- reuse an auth user UUID as nation_id
- install a UUID extension for implicit generation

The initial bootstrap manifest must provide the exact nation_id.

## 6. Nation Code Boundary

The following sources are not automatically promoted into nation_code:

- R11 map/navigation codes
- Initial Nation Set object keys
- UI labels
- route parameters
- PersonaOS nation_code
- historical aliases

An approved provisioning manifest must explicitly provide nation_code.

Any later reconciliation between:

- world-design nation reference
- navigation code
- CivilizationOS nation_code
- PersonaOS nation identity

requires an explicit mapping contract.

## 7. PersonaOS Boundary

personaos.nation remains outside the R13 CivilizationOS physical
nation ownership boundary.

No cross-schema FK to personaos.nation is introduced.

No PersonaOS row is copied automatically.

No equality between:

- civilization.nation_registry.nation_id
- personaos.nation.nation_id

is assumed.

Cross-OS nation reconciliation remains separate work.

## 8. Nation Foreign-Key Resolution

After nation_registry is created, the following CivilizationOS
nation references must bind to it:

- civilization.territory_record.nation_id
- civilization.facility_registry.owner_nation_id
- civilization.nation_read_authorization.nation_id

This does not collapse facility ownership into physical placement.

Facility Registry owner nation remains ownership truth.
Active Facility Placement remains location truth.

city_registry, district_registry, and active_facility_placement
already resolve nation identity transitively through their existing
territory / city bindings.

## 9. Existing-Row Gate

nation_registry is initially empty.

Therefore the first DDL apply must stop when any pre-existing
canonical row would require silent nation adoption.

Before the initial nation-registry DDL apply, require zero rows in:

- territory_record
- facility_registry
- district_registry
- active_facility_placement
- city_registry
- nation_read_authorization

If any row exists:

STOP.

Do not auto-backfill nation identity.

## 10. Seed-World Promotion Boundary

Canonical seed-world documents may be used as human-reviewed source
material for deciding a provisioning manifest.

They are not executable database seed files.

In particular, the Initial Nation Set identifies nation concepts,
but it does not by itself provide:

- physical nation_id UUID
- approved physical nation_code mapping
- Territory Record identity
- territory_code
- territory_class
- controlling_authority_scope

Those values must remain explicit.

## 11. Aurelia Boundary

Aurelia is preserved by canon as a historical / dismantled state.

R13 must not silently provision Aurelia as:

- current active nation
- current active Territory Record
- city-local authorization target

A future historical-state import may create a dismantled nation identity
under a separate approved manifest.

The active bootstrap path in this document requires nation_status = active.

## 12. Active Nation Bootstrap

The initial active nation bootstrap provisions exactly one approved
current-active nation at a time.

Required nation manifest values:

- nation_id
- nation_code
- nation_name
- nation_source_state_version
- nation_effective_from

Fixed initial values:

- nation_status = active
- effective_until = NULL

No default nation is selected automatically.

## 13. Territory Bootstrap

The same initial bundle may provision exactly one current-active
Territory Record for that nation.

Required territory manifest values:

- territory_record_id
- nation_id
- territory_code
- territory_name
- territory_class
- controlling_authority_scope
- territory_effective_from

Fixed initial values:

- territory_status = active
- effective_until = NULL

No default territory code, class, name, or authority scope is invented.

## 14. Nation / Territory Atomicity

The initial bootstrap bundle is atomic.

Required order:

1. validate manifest
2. resolve / lock nation registry state
3. insert exact nation only when absent
4. verify exact nation state
5. resolve / lock Territory Record state
6. insert exact territory only when absent
7. verify exact territory state
8. commit

Any semantic collision before commit must rollback.

## 15. Nation Idempotency

If nation_code is absent and nation_id is absent:

- insert exact approved nation

If existing nation state exactly matches the manifest:

- accept as idempotent no-op

If either nation_id or nation_code resolves to different canonical data:

- STOP

Do not:

- UPDATE conflicting nation data
- rename nation silently
- change nation lifecycle silently
- replace nation_id
- insert an alias row

## 16. Territory Idempotency

For nation_id + territory_code:

If absent:

- insert exact approved Territory Record

If an exact row already exists:

- accept as idempotent no-op

If the natural key or territory_record_id collides with different state:

- STOP

No ON CONFLICT DO UPDATE is permitted.

## 17. City Provisioning Dependency

After this design is adopted, city provisioning requires:

1. civilization.nation_registry current-active nation
2. civilization.territory_record current-active territory bound to that nation
3. approved city manifest
4. approved signed-session actor proof
5. separate authorization mutation authority

Territory Record alone no longer serves as the root proof of
nation existence.

## 18. Authorization Dependency

nation_read_authorization.nation_id must bind to nation_registry.

A grant may therefore only target a canonical CivilizationOS nation.

Grant existence still does not prove city existence.

Authentication still does not create authorization.

## 19. No Public Mutation Endpoint

Nation / territory bootstrap is initially operator-controlled.

This design authorizes no:

- public browser mutation API
- login-time nation creation
- login-time territory creation
- localStorage-derived mutation
- route-derived mutation
- GET side effect

Production nation administration requires later explicit administrative
authority design.

## 20. Database Boundary

Database execution uses only:

- PERSONA_DATABASE_URL
- civilization schema

Fallback to DATABASE_URL is prohibited.

public schema is prohibited.

TLS certificate and hostname validation remain mandatory.

## 21. Prepared DDL

Prepared nation-registry schema files:

- 12000208008_01_NATION_REGISTRY_DDL_APPLY.sql
- 12000208008_02_NATION_REGISTRY_DDL_VERIFY.sql
- 12000208008_03_NATION_REGISTRY_DDL_ROLLBACK.sql

DDL creates no data.

## 22. Prepared Provisioning SQL

Prepared bootstrap data files:

- 12000208008_04_NATION_TERRITORY_PROVISIONING_PREFLIGHT.sql
- 12000208008_05_NATION_TERRITORY_PROVISIONING_APPLY.sql
- 12000208008_06_NATION_TERRITORY_PROVISIONING_VERIFY.sql

Their existence is not execution authorization.

## 23. Rollback Boundary

DDL rollback is allowed only before canonical nation / territory data exists.

Once canonical nation or territory truth exists:

- do not DELETE it as ordinary rollback
- do not drop nation_registry
- use an approved lifecycle transition or corrective migration

## 24. Acceptance

Accepted when:

- CivilizationOS nation physical owner is explicit
- PersonaOS is not silently adopted
- seed/navigation codes are not silently promoted
- nation UUID is explicit
- Territory Record binds to canonical nation
- Facility owner nation binds to canonical nation
- read authorization nation binds to canonical nation
- Aurelia is not silently activated
- bootstrap nation and territory values are explicit
- exact idempotency replaces silent upsert
- no DB connection occurs during this design GO
