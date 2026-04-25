# CasualChatWorker Persona DB Boundary Correction Map

status: active

## 1. Correct DB Target

Correct:

- DB target: Persona-side DB
- DB env: PERSONA_DATABASE_URL
- schema business: Persona-side business schema
- schema aiworker: Persona-side aiworker schema
- schema cx22073jw: Persona-side cx22073jw schema
- schema app_common: Persona-side shared presentation metadata schema candidate

Incorrect for this app DB path:

- ERP-side DATABASE_URL
- ERP DB apply
- ERP DB dry-run
- frontend DB secret

## 2. Correct Schema Responsibilities

### business

Owns facts:

- rental contract
- contract line
- rental period
- chat/rental session
- price catalog
- payment intent/status
- monthly free ticket grant
- free ticket balance
- entitlement usage
- usage log
- session end summary
- safety event as usage fact
- rental history

### aiworker

Owns AI worker canon:

- AI worker entity
- model / series / individual
- personality
- style
- LoVerS style card
- ビジネスヤンデレ metadata
- series tendency
- conversation control
- safety boundary
- app eligibility

### cx22073jw

Owns read-only topic material:

- smalltalk material
- topic material
- daily conversation material
- safe topic expansion
- Friend/Lover topic examples

### app_common / CommonOS

Owns presentation metadata only:

- UI token
- component variant
- timer display candidate
- worker card display candidate
- safety notice display candidate

## 3. Wording Correction Rules

Replace or interpret old wording as follows:

| Old / Ambiguous | Correct Interpretation |
|---|---|
| BusinessOS backend DB | BusinessOS app/backend responsibility, DB target is Persona-side DB |
| business schema | Persona-side business schema |
| DB work uses DATABASE_URL | Incorrect; use PERSONA_DATABASE_URL |
| ERP DB path | Not v1 / forbidden for WorkerRentalCore in this app |
| business owns AI worker | Incorrect; aiworker owns AI worker canon |
| aiworker owns contract | Incorrect; business owns contract facts |
| cx22073jw owns chat state | Incorrect; cx22073jw owns read-only material only |
| CommonOS owns pricing | Incorrect; CommonOS owns presentation only |

## 4. Phase N Meaning

Phase N validation must validate the Persona-side DB backed WorkerRentalCore path.

Phase O must remain STOP until:

- Persona-side DB boundary is intact
- no frontend secrets
- payload gap passes
- auth/session policy passes
- 150-minute quote is rejected
- Boss approves real mode

