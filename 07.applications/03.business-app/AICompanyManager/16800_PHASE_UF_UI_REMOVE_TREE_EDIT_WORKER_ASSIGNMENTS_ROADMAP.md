# AICompanyManager Phase UF-UI remove tree + editable worker assignments roadmap

## Phase
- UF-UI

## Current correction
- 課ツリーは不要。
- 課に追加したWorkerロボットは変更できる必要がある。

## Current canonical UI
- AI企業設定:
  - Presidentロボット設定
  - President社内通称設定
  - 会社事業方針をPresidentへ指示

- 部門詳細:
  - Managerロボット設定
  - Manager社内通称設定

- 課詳細:
  - Leaderロボット設定
  - Leader社内通称設定
  - Workerロボットをコンボボックスで複数配置
  - Workerごとに社内通称
  - 配置済みWorkerロボットを変更可能

## System-use rule
AICompanyManager is a system-use app.
Robot allocation is unlimited and does not consume quantity.

## This phase
- Remove 課ツリー / 組織ツリー display.
- Directly repair renderDashboard.
- Directly repair renderDepartmentDetail.
- Directly repair renderOrganizationDetail.
- Directly repair renderOrganizationEdit.
- Add Manager setting actions.
- Add Leader setting actions.
- Add Worker add/update actions.
- Keep index.html script count 1.
- Run node --check.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
- quantity consumption
