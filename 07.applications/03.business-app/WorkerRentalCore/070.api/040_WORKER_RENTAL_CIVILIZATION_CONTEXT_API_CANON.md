# WorkerRentalCore civilization_id API Context Canon

## Status
- status: canon
- apply_status: not_applied

## 1. Session context
WorkerRentalCore write APIs must set:

- app.current_civilization_id

Optional:
- app.current_company_id only when target company exists

## 2. Source of civilization_id
Local/dev:
- header: X-Civilization-Id
- env fallback only for smoke tests, not production

Production:
- auth claim / session claim / user identity service must provide civilization_id

## 3. API write rule
For persistent writes:
- owner_civilization_id must be derived from trusted context
- request body owner_civilization_id is not trusted by itself
- request body user_id is legacy/reference only

## 4. Quote rule
Dry-run quote:
- may run without persistence
- can be no-persist

Persistent quote:
- must include owner_civilization_id

## 5. Contract confirm rule
Contract confirm:
- must require app.current_civilization_id
- must insert owner_civilization_id
- must not rely on company_id alone

## 6. RLS rule
After owner_civilization_id is populated:
- RLS uses app.current_civilization_id
- DELETE is avoided
- status transitions/cancel/end are used instead
