# AICompanyManager Phase TM-TP actual UI robot screen repair v2 roadmap

## Phase
- TM-TP

## Reported issues
- Added robot UI appears on dashboard directly.
- Added UI appears only first time and disappears after navigation/back.
- Robot cannot be selected from organization change.
- Company President cannot be set.
- AI企業設定 screen does not need 新規追加 card.
- Dashboard does not need 操作入口 card.
- Dashboard does not need Phase explanation text.

## Correct behavior
- Dashboard is status/overview only.
- President robot setting belongs to AI企業設定.
- Company business policy instruction belongs to AI企業設定 and targets President.
- Organization robot placement belongs to organization card / organization detail.
- Robot selection must come from Business registered robot catalog.
- Arbitrary robot name creation must not be used.

## This phase
- Add route-aware actual UI repair patch.
- Hide old dashboard-level fallback panels.
- Hide dashboard noise cards/text.
- Add AI企業設定 nav entry if missing.
- Insert President setting into AI企業設定 screen only.
- Replace organization robot textarea/input with Business registered robot select.
- Add organization-card robot add controls.
- Use MutationObserver so repair remains after navigation/back.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
