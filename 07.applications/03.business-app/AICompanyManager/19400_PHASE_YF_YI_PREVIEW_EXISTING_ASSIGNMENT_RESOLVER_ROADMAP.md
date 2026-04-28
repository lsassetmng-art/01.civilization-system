# AICompanyManager Phase YF-YI preview existing assignment resolver roadmap

## Current state
- BusinessOS DB company binding is now scoped to AI企業設定.
- company_id resolves to canonical UUID.
- President payload still shows robot "-" when select sync loses to re-render timing.

## This phase
- Patch payload preview only.
- If select is placeholder, read visible existing assignment text.
- Extract Business側ロボットプール UUID.
- Match it against BusinessOS DB robot_pool rows.
- Use matched DB robot fields in payload.
- Keep DB write disabled.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- quantity consumption
- main UI JS change
