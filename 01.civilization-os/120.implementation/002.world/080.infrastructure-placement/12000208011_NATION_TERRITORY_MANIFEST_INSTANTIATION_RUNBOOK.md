# R13 NATION AND TERRITORY MANIFEST INSTANTIATION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208011
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the later controlled materialization of the approved first
nation / territory manifest.

Instantiation produces runtime-local values only.

It does not mutate the database.

## 2. Required Gate

Instantiation requires a separate explicit:

CIVILIZATIONOS_R13_NATION_TERRITORY_MANIFEST_INSTANTIATE GO

Without that GO:

- do not generate final UUID values
- do not create a live runtime manifest
- do not perform database preflight
- do not perform provisioning apply

## 3. Fixed Semantic Values

Instantiation must use exactly:

R13_NATION_CODE=helios
R13_NATION_NAME=Helios Democratic Kingdom
R13_NATION_SOURCE_STATE_VERSION=1

R13_TERRITORY_CODE=national-territory
R13_TERRITORY_NAME=Helios Democratic Kingdom Territory
R13_TERRITORY_CLASS=national_primary_territory
R13_CONTROLLING_AUTHORITY_SCOPE=nation

No substitution is allowed during instantiation.

## 4. Materialized Values

Instantiation creates exactly:

- R13_NATION_ID
- R13_TERRITORY_RECORD_ID
- one shared effective timestamp

The shared timestamp is assigned to:

- R13_NATION_EFFECTIVE_FROM
- R13_TERRITORY_EFFECTIVE_FROM

## 5. UUID Requirements

Both identifiers must:

- parse as UUID
- be different from one another
- not be derived from semantic strings
- not be derived from PersonaOS
- not be derived from authentication data
- not be committed into the design repository

UUID creation belongs to the controlled operator instantiation process,
not the database DDL.

## 6. Time Requirement

The materialized effective time must:

- be explicit
- include timezone information
- be no later than the instantiation time
- be identical for nation and territory

Do not translate fictional Civilization Year into a wall-clock timestamp.

## 7. Runtime Manifest Location

The live manifest should be written under a temporary runtime location,
for example:

/data/data/com.termux/files/usr/tmp/

It must not be created under:

- 01.civilization-system
- 03.civilization-development

## 8. Review Output

Instantiation must display the complete non-secret manifest values before
database mutation.

The manifest contains no credential or session secret.

The output must include a SHA-256 hash of the exact manifest file.

## 9. No DB Connection

Instantiation itself must not connect to PostgreSQL.

The first database operation after manifest approval is the prepared
read-only provisioning preflight.

## 10. Next Mutation Gate

After an instantiated manifest has been reviewed and accepted, actual
database mutation still requires:

CIVILIZATIONOS_R13_NATION_TERRITORY_PROVISIONING_APPLY GO

That apply GO must:

1. re-check canonical design authority
2. verify manifest hash
3. use PERSONA_DATABASE_URL only
4. enforce verify-full TLS
5. execute read-only provisioning preflight
6. execute apply only after preflight PASS
7. execute canonical verify immediately after apply
8. perform no automatic rollback after committed success
