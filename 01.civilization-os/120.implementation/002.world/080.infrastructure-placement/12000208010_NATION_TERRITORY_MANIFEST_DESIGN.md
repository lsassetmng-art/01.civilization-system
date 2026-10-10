# R13 NATION AND TERRITORY MANIFEST DESIGN

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208010
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the first concrete semantic manifest for R13
nation / territory bootstrap.

This document fixes the human-reviewed semantic values.

It does not:

- create UUID values
- choose wall-clock effective timestamps
- connect to the database
- insert nation data
- insert territory data
- mutate AWS
- mutate the implementation repository

Operational identity and timestamp materialization is a later gate.

## 2. Canonical Source Basis

Current CivilizationOS canonical nation/city design identifies
Helios Democratic Kingdom as a major active nation.

Aurelia is represented separately as a dismantled historical state.

The Territory Record canonical model defines:

- territory_record_id
- nation_id
- territory_code
- territory_name
- territory_status
- territory_class
- controlling_authority_scope
- effective_from
- effective_until
- created_at
- updated_at

The Territory Record model fixes the territory status enum but does not
itself define an enum for:

- territory_class
- controlling_authority_scope

Therefore those two values must be fixed explicitly by this R13 design
rather than inferred silently.

## 3. First Bootstrap Nation Decision

The first R13 active bootstrap nation is:

- Helios Democratic Kingdom

This is an explicit R13 bootstrap sequencing decision.

It does not imply that Helios has higher canonical authority than the
other current active nations.

It only establishes the first physical nation / territory pair required
to exercise the R13 canonical read path.

## 4. Physical Nation Manifest

The first semantic nation manifest is fixed as:

- nation_code: helios
- nation_name: Helios Democratic Kingdom
- nation_status: active
- nation_source_state_version: 1
- effective_until: NULL

The value:

- nation_code = helios

is deliberately adopted as the R13 physical CivilizationOS nation code
by this design.

It is not accepted merely because the same string is present in an R11
navigation projection.

After this design is approved, equality between the navigation selector
and physical nation_code for Helios is intentional compatibility,
not inferred truth.

## 5. Nation UUID

nation_id is not fixed in this design document.

It must be materialized in the later controlled manifest-instantiation
step as a new canonical UUID and then displayed for human approval before
database mutation.

The DDL does not generate it.

The database must not derive it from:

- helios
- navigation data
- nation name
- PersonaOS
- authentication identity
- provider subject
- hash of another identifier

## 6. Nation Effective Time

nation_effective_from is not inferred from fictional Civilization Year.

The later instantiation step must materialize one explicit real
timestamptz representing activation of this physical R13 canonical row.

That exact value becomes part of the approved runtime-local manifest.

## 7. First Territory Decision

The initial Helios Territory Record is fixed semantically as:

- territory_code: national-territory
- territory_name: Helios Democratic Kingdom Territory
- territory_status: active
- territory_class: national_primary_territory
- controlling_authority_scope: nation
- effective_until: NULL

These R13 values are new explicit physical design decisions.

They are not claimed to be pre-existing enum values from the earlier
Territory Record model.

## 8. Territory Code Meaning

national-territory means:

the primary canonical territory scope used for initial R13 city binding
for the selected nation.

The natural key remains:

- nation_id
- territory_code

Therefore another nation may later use the same territory_code without
natural-key collision.

This code does not mean:

- continent
- city
- district
- navigation region
- military zone

## 9. Territory Class Meaning

national_primary_territory means:

the initial top-level territorial scope of a canonical active nation for
R13 city placement and lineage.

It is introduced here because the canonical Territory Record model
requires territory_class but does not provide a fixed enum.

This value must not be generalized into a universal Territory Record enum
without separate design approval.

## 10. Controlling Authority Meaning

controlling_authority_scope = nation means:

the top-level controlling authority for this initial Territory Record is
the canonical nation represented by nation_id.

It does not identify:

- an individual person
- a Persona
- a government employee
- an OAuth account
- an AI
- a city government

It is a scope classification only.

## 11. Territory UUID

territory_record_id is not fixed in this document.

The later manifest-instantiation step must create a new explicit UUID,
display it, and include it in the approved runtime-local manifest.

No deterministic derivation from nation_id is allowed.

## 12. Territory Effective Time

For the first bootstrap bundle:

- territory_effective_from must equal nation_effective_from

This establishes one atomic initial effective boundary for the first
physical nation / territory pair.

A later territory lifecycle event may use different effective periods.

## 13. Exact Semantic Manifest

The approved semantic values are:

nation_code:
- helios

nation_name:
- Helios Democratic Kingdom

nation_status:
- active

nation_source_state_version:
- 1

nation_effective_until:
- NULL

territory_code:
- national-territory

territory_name:
- Helios Democratic Kingdom Territory

territory_status:
- active

territory_class:
- national_primary_territory

controlling_authority_scope:
- nation

territory_effective_until:
- NULL

## 14. Values Still Unmaterialized

Exactly three operational values remain unresolved after this design:

1. nation_id
2. territory_record_id
3. shared effective_from timestamp

Those values require the separate manifest-instantiation gate.

No additional semantic field may change during instantiation.

## 15. Runtime-Local Manifest

The finalized manifest must contain:

- R13_NATION_ID
- R13_NATION_CODE
- R13_NATION_NAME
- R13_NATION_SOURCE_STATE_VERSION
- R13_NATION_EFFECTIVE_FROM
- R13_TERRITORY_RECORD_ID
- R13_TERRITORY_CODE
- R13_TERRITORY_NAME
- R13_TERRITORY_CLASS
- R13_CONTROLLING_AUTHORITY_SCOPE
- R13_TERRITORY_EFFECTIVE_FROM

The live instantiated manifest must remain runtime-local.

Do not commit instantiated UUIDs/timestamps to the design repository.

## 16. Instantiation Integrity

The instantiation step must verify:

- nation code remains helios
- nation name remains exact
- nation source state version remains 1
- territory code remains national-territory
- territory name remains exact
- territory class remains national_primary_territory
- controlling authority scope remains nation
- both UUIDs are canonical UUID text
- the two UUIDs differ
- effective timestamps are identical
- effective timestamp is not in the future
- no DB connection occurs

## 17. Provisioning Boundary

This design is not:

CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_APPLY GO

No database mutation is authorized here.

After instantiation and explicit approval, the already prepared:

12000208008_04_NATION_TERRITORY_PROVISIONING_PREFLIGHT.sql

must run read-only before any provisioning apply.

## 18. Other Nations

This document does not instantiate:

- Nova Commercial Federation
- Seiwa State
- Gladia Military Alliance
- Orpheus Oceanic Union
- Free Cities Union

They require their own later approved manifest or an explicitly approved
multi-nation manifest design.

Aurelia must not enter this active bootstrap path.

## 19. Acceptance

Accepted when:

- first bootstrap nation is explicitly Helios
- helios is explicitly adopted as R13 physical nation_code
- semantic territory values are explicitly fixed
- undefined Territory Record class/scope values are not represented as
  pre-existing canonical enums
- UUIDs remain unmaterialized
- effective timestamp remains unmaterialized
- no DB connection occurs
- no data mutation occurs
