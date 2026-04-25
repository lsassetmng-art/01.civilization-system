# CasualChatWorker Persona DB Execution Policy Refined

status: active
generated_at: 20260425_214235

## 1. Execution Blockers

Block Phase N DB-connected validation if any are found:

- psql "$DATABASE_URL"
- required DATABASE_URL env gate
- PostgreSQL connectionString using DATABASE_URL
- frontend DB secret assignment
- frontend psql usage

## 2. Non-Blockers

The following are allowed in documentation:

- DATABASE_URL listed as forbidden
- ERP DB path listed as forbidden
- STOP conditions mentioning DATABASE_URL

## 3. Required

- PERSONA_DATABASE_URL
- Persona-side DB
- business schema as Persona-side business schema

