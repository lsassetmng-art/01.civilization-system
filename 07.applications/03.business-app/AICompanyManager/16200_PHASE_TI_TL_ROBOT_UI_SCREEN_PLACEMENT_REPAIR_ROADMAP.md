# AICompanyManager Phase TI-TL robot UI screen placement repair roadmap

## Phase
- TI-TL

## Current issue
Robot setting UI appears directly on dashboard.

## Correct behavior
- President robot is configured on AI企業設定 screen.
- Company business policy is instructed to President from AI企業設定 screen.
- Organization robot placement is done from each organization card on 組織詳細 screen.
- Assignable robots are selected from Business registered robot catalog.
- Arbitrary free-text robot creation is not allowed.

## This phase
- Hide superseded dashboard-level robot setting panels.
- Add local screen router for:
  - 会社ダッシュボード
  - AI企業設定
  - 組織詳細
- Render President UI only under AI企業設定.
- Render organization robot placement only under 組織詳細.
- Keep index.html script count as 1.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
