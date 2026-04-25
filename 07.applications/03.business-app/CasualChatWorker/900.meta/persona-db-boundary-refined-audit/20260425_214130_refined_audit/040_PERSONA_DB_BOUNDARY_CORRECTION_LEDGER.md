# CasualChatWorker Persona DB Boundary Correction Ledger

status: active
generated_at: 20260425_214130

## 1. Refined Rule

The word DATABASE_URL appearing in documentation as a forbidden term is not itself a blocker.

A blocker is only one of the following:

- executable use of psql "$DATABASE_URL"
- executable requirement of DATABASE_URL
- executable PostgreSQL connection using process.env.DATABASE_URL
- frontend secret assignment or frontend psql usage

## 2. Correct Execution Rule

Use:

- PERSONA_DATABASE_URL

Do not use:

- DATABASE_URL
- ERP DB path
- frontend DB secret

## 3. Correct Schema Responsibility

business owns:

- contract
- pricing
- payment
- entitlement/free-ticket
- usage
- session facts
- rental history

aiworker owns:

- AI worker entity
- AI worker model
- series
- individual identity
- personality
- style
- conversation control
- safety boundary
- app eligibility

cx22073jw owns:

- smalltalk material
- topic material
- safe topic expansion

CommonOS / app_common owns:

- UI presentation metadata only

## 4. Interpretation of Old Wording

If old docs say "BusinessOS backend", interpret as:

- BusinessOS app/backend responsibility
- DB target remains Persona-side DB
- database env remains PERSONA_DATABASE_URL

If old docs say "business schema", interpret as:

- Persona-side business schema in this app context

