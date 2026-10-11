# R13 CITY AND READ AUTHORIZATION MANIFEST INSTANTIATION RUNBOOK

status: implementation-ready-draft
layer: implementation
domain: world.infrastructure-placement
document_id: 12000208013
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines controlled materialization of the first Helios city and
city_local_read authorization manifest.

Instantiation is runtime-local only.

It performs no DB mutation.

## 2. Required Gate

Instantiation requires a separate explicit:

CIVILIZATIONOS_R13_CITY_AUTH_MANIFEST_INSTANTIATE GO

Without that GO:

- do not generate city UUID
- do not generate authorization UUID
- do not capture live actor identity
- do not create final runtime manifest
- do not run DB preflight
- do not run DB apply

## 3. Fixed Semantic Values

Instantiation must preserve exactly:

R13_CITY_CODE=helios_city
R13_CITY_NAME=Helios City
R13_TERRITORY_CODE=national-territory
R13_SOURCE_STATE_VERSION=1

Authorization semantics remain fixed:

scope_code=city_local_read
authorization_status=active

No semantic substitution is permitted.

## 4. Parent Nation Identity

R13_NATION_ID must be the exact already-approved and physically
provisioned Helios nation_id.

Preferred runtime lineage source:

- the approved Nation / Territory live runtime manifest used for the
  successful Helios provisioning operation

Instantiation must verify the approved parent manifest hash supplied by
the operator before copying R13_NATION_ID.

Do not generate a new nation UUID.

Do not derive nation_id from helios.

## 5. Materialized Values

The instantiation step creates:

- R13_CITY_REGISTRY_ID
- R13_AUTHORIZATION_ID
- one shared city/auth effective timestamp

It also captures:

- R13_SERVER_SESSION_ACTOR_KEY

from a successful real server identity-proof response.

## 6. Actor Proof Prerequisite

The identity endpoint is:

GET /api/civilization/auth/session-identity

Required implementation lineage includes:

f2f11148c839095d0522665747f41aeb040cc963

The proof must be obtained using the intended actor's actual valid signed
CivilizationOS session.

A smoke-test identity is forbidden for canonical authorization.

## 7. Actor Proof Capture

The proof response must be handled as runtime-local sensitive
authorization-subject data.

Recommended process:

1. call the identity-proof route from the intended authenticated actor
   context
2. require HTTP 200
3. require exact JSON field server_session_actor_key
4. store the proof response in a mode-0600 runtime-local file
5. validate the response shape
6. extract the raw actor key into the final runtime manifest
7. compute SHA-256 of the actor key
8. print only the actor-key SHA-256 in ordinary execution output

Do not print the raw actor key.

Do not store the raw session cookie in the manifest.

## 8. UUID Requirements

R13_CITY_REGISTRY_ID and R13_AUTHORIZATION_ID must:

- parse as UUID
- differ from each other
- not be derived from semantic strings
- not be derived from nation_id
- not be derived from actor key
- not be committed to Git

## 9. Effective-Time Requirement

Materialize one explicit timestamptz.

Assign it to both:

- R13_CITY_EFFECTIVE_FROM
- R13_AUTHORIZATION_EFFECTIVE_FROM

It must:

- include timezone information
- be no later than instantiation time
- be no earlier than the approved current Helios Territory Record
  effective_from

The later DB preflight independently re-verifies territory compatibility.

## 10. Runtime Manifest Location

The live manifest must be outside both repositories.

Recommended location:

/data/data/com.termux/files/usr/tmp/

File mode:

0600

Containing directory mode:

0700

## 11. Final Runtime Manifest

The final file contains:

R13_CITY_AUTH_MANIFEST_VERSION=1

R13_CITY_REGISTRY_ID
R13_NATION_ID
R13_CITY_CODE
R13_CITY_NAME
R13_TERRITORY_CODE
R13_SOURCE_STATE_VERSION
R13_CITY_EFFECTIVE_FROM

R13_AUTHORIZATION_ID
R13_SERVER_SESSION_ACTOR_KEY
R13_AUTHORIZATION_EFFECTIVE_FROM

## 12. Review Output

Ordinary review output may print:

- city_registry_id
- nation_id
- city_code
- city_name
- territory_code
- source_state_version
- authorization_id
- actor-key SHA-256
- shared effective timestamp
- final manifest SHA-256

It must not print:

- raw actor key
- raw session cookie
- session signing secret
- OAuth access token
- OAuth refresh token
- database URL
- database password

## 13. No Database Connection

Manifest instantiation itself performs no PostgreSQL connection.

The first database operation after final manifest approval is the
prepared city/auth provisioning read-only preflight.

## 14. Next Mutation Gate

After the final runtime-local manifest is reviewed and its hash is fixed,
actual city/auth database mutation still requires:

CIVILIZATIONOS_R13_CITY_AUTH_PROVISIONING_APPLY GO

That later execution must:

1. verify design authority
2. verify implementation identity-proof lineage
3. verify runtime manifest hash
4. use PERSONA_DATABASE_URL only
5. use verify-full TLS
6. run canonical read-only provisioning preflight
7. apply only after PASS
8. verify immediately after commit
9. perform no automatic destructive rollback
