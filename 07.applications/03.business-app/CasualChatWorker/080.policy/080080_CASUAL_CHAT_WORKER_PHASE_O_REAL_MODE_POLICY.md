# CasualChatWorker Phase O Real Mode Policy

status: active
generated_at: 20260425_224836

## 1. Policy

Frontend real mode is a presentation/API-mode switch only.

It must not introduce:

- DB connection strings
- psql
- service role keys
- Supabase keys
- ERP DATABASE_URL
- direct browser DB access

## 2. Backend Responsibility

The real API backend is responsible for DB access.

DB target remains:

- Persona-side DB

DB env remains:

- PERSONA_DATABASE_URL

## 3. Schema Responsibility

- business: contract/payment/entitlement/session facts
- aiworker: AI worker entity/series/personality/safety canon
- cx22073jw: read-only smalltalk/topic material
- CommonOS: UI presentation only

