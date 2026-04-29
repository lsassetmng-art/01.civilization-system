# AICompanyManager Phase ABS-ABV Production Company Context UI Simplify Roadmap

## Decision
The production UI should not have a second company selector inside company edit/delete.

## Canonical UI
- AI企業選択 is the current company selector.
- Company edit/delete uses the selected current company.
- BusinessOS DB company_id is internal state and should not be shown as a normal card.
- Debug badges/cards should not appear in production-like UI.

## This phase
- Hide company edit/delete "変更対象" selector and load button.
- Sync current company from AI企業選択 into company edit form.
- Hide BusinessOS DB company bind/company_id display cards.
- Hide company save debug badge.
- Keep DB/API save behavior unchanged.

## Safety
- DB WRITE: NOT EXECUTED
- API SAVE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
