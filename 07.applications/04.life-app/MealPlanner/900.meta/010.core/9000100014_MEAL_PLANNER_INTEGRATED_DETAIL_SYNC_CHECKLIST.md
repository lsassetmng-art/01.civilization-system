# MealPlanner Integrated Detail Sync Checklist

## 1. purpose
integrated doc と detail docs の間に意味ずれがないかを見る。

## 2. sync_axes

### axis_01_pricing
integrated_should_match:
- policy docs
- ui copy docs
- support docs

### axis_02_schema
integrated_should_match:
- db logical schema
- implementation notes
- consistency matrix

### axis_03_plan_horizon
integrated_should_match:
- runtime behavior
- api exact payload
- screen exact io

### axis_04_csv
integrated_should_match:
- csv exact definition
- csv free paid final policy
- export api payload

### axis_05_publish
integrated_should_match:
- publish contract summary
- versioning policy
- authority boundary

### axis_06_cx22073jw
integrated_should_match:
- cx22073jw boundary final
- integration docs
- requirement traceability

### axis_07_history
integrated_should_match:
- history retention final policy
- audit and delete policy
- ui gating / history screen

### axis_08_notification
integrated_should_match:
- notification api exact
- notification logical shape
- notification settings screen

## 3. correction_rule
- detail が新しい場合:
  - integrated を追従修正
- integrated が新しい場合:
  - detail が古い可能性を疑って確認
- overview は最後に追従させる
