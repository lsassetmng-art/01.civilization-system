# AICompanyManager actual UI robot screen repair v2 scope

## Fixed screens

### Dashboard
Must not show:
- direct robot setting panel
- Phase AN explanation text
- 操作入口 card

### AI企業設定
Must show:
- President robot setting
- company policy instruction to President

Must not show:
- 新規追加 card

### 組織詳細 / 組織変更
Must show:
- organization card robot add action
- Business registered robot selection
- no arbitrary robot name free text creation

## Local catalog
This phase uses browser localStorage mirror of Business registered robot catalog:
- aicm.businessRegisteredRobots.v1

## Persistent write
Not executed.
Persistent DB integration requires explicit approval.
