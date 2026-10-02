# live AIWorkerOS call overview

## Category selection

- 01.civilization-os
- 02.persona-os
- 03.business-os
- 04.life-os
- 05.game-os
- 06.streaming-os
- 08.civilization-portal-site
- 10.staticart-os
▶ 11.aiworker-os
- 12.common-os
- ERP

## Current position

This is AIWorkerOS-side endpoint design only.

This step does not create or update:

- AICompanyManager application files
- BusinessOS implementation files
- DB tables
- RLS
- HTTP server implementation

## Canonical concept

The live AIWorkerOS call endpoint is an HTTP API endpoint.

It is not a PostgreSQL connection.

PERSONA_DATABASE_URL is for PostgreSQL or Supabase DB access.
PERSONA_DATABASE_URL must not be used as an HTTP endpoint.

## Canonical environment names

Preferred:

- PERSONA_AIWORKEROS_BASE_URL
- PERSONA_AIWORKEROS_AUTH_TOKEN

Compatibility aliases:

- AIWORKEROS_BASE_URL
- PERSONA_BASE_URL
- PERSONAOS_BASE_URL
- PERSONA_API_BASE_URL

## Canonical endpoint

POST /aicm/v1/workflow-start/live-aiworkeros-call

## Full URL form

{PERSONA_AIWORKEROS_BASE_URL}/aicm/v1/workflow-start/live-aiworkeros-call

## Roadmap

1. Define AIWorkerOS-side HTTP endpoint contract.
2. Fix request and response payloads.
3. Define security, idempotency, and forbidden actions.
4. Keep DB/RLS/write phases separate.
5. Implement endpoint later.
6. Execute live call only after endpoint URL exists.
