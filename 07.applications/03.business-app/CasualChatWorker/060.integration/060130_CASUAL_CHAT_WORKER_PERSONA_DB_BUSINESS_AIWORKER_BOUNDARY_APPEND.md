# CasualChatWorker Persona DB / business / aiworker Boundary Append

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker / WorkerRentalCore DB work targets the Persona-side DB.

The business schema in this context is the Persona-side business schema.

## 2. Correct Responsibility Split

- business: contract, pricing, free ticket, entitlement, usage, payment, session facts
- aiworker: AI worker entity, model, series, personality, conversation control, safety boundary
- cx22073jw: smalltalk/topic material read-only
- app_common / CommonOS: UI presentation metadata only

## 3. Environment

Required:

- PERSONA_DATABASE_URL

Forbidden:

- DATABASE_URL for this DB path
- ERP DB apply
- ERP DB dry-run
- frontend DB secrets

## 4. Phase N Meaning

Phase N validation checks the Persona-side DB backed WorkerRentalCore path.

Phase O real mode must not begin until this boundary remains intact.

