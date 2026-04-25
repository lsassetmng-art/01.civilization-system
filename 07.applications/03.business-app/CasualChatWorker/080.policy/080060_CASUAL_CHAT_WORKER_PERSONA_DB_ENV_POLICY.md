# CasualChatWorker Persona DB Environment Policy

status: active
generated_at: 20260425_205110

## 1. Environment

Required for DB-connected validation:

- PERSONA_DATABASE_URL

Forbidden:

- DATABASE_URL
- service_role in frontend
- supabase_key in frontend
- psql in frontend

## 2. Meaning

BusinessOS is the app/backend responsibility area.

The database target is Persona-side DB.

Therefore, the business schema referenced by WorkerRentalCore is the Persona-side business schema.

## 3. STOP

Stop if any future command:

- uses DATABASE_URL
- targets ERP DB
- writes secrets into frontend
- treats business as owner of AI worker entity canon
- treats aiworker as owner of contract/payment facts

