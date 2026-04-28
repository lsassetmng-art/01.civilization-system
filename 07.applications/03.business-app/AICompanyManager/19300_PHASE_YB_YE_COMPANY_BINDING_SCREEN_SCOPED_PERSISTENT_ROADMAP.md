# AICompanyManager Phase YB-YE company binding screen scoped persistent roadmap

## Current issue
BusinessOS DB company binding appeared on dashboard and disappeared after refresh/re-render.

## Cause
The binding card was injected into the current DOM once. AICompanyManager's main UI re-renders screen content, so the injected card can be removed. It also had no strict screen scope, so it could appear on dashboard.

## This phase
- Replace company binding JS with screen scoped persistent V3.
- Render only when AI企業設定 / Presidentロボット screen area exists.
- Never render on dashboard.
- Reinsert after UI re-render using MutationObserver.
- Keep localStorage DB company UUID binding.
- Keep preview company_id localStorage fallback.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent save
- quantity consumption
- main UI JS change
