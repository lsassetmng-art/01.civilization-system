# MealPlanner Freeze Execution Checklist

## 1. purpose
MealPlanner を実装前の設計 freeze candidate として扱う前に、
最後に確認する順番を固定する。

## 2. execution_order

### step_01_integrated_check
confirm:
- 00_MEAL_PLANNER_INTEGRATED.md が最新方針を要約している
- schema が life になっている
- 無料 / 有料500円 が明記されている
- AIチャットのみサポートが明記されている
- 日 / 週 / 月提案が明記されている

### step_02_boundary_check
confirm:
- CX22073JW 正本境界が明記されている
- LifeOS Publish 境界が明記されている
- private / household / lifeos_public が混同されていない

### step_03_exact_check
confirm:
- API exact payload がある
- DB logical schema がある
- screen exact I/O がある
- required / optional / nullable がある
- index / unique / FK / audit policy がある

### step_04_policy_check
confirm:
- published menu versioning がある
- favorite / template snapshot-first がある
- CSV free / paid 差がある
- history retention がある
- notification settings policy がある

### step_05_ui_check
confirm:
- UI copy がある
- validation copy がある
- CSV columns がある
- component decomposition がある
- props / event payload がある

### step_06_not_yet_check
confirm:
- DDL がない
- SQL がない
- migration がない
- 実装コードがない
- runtime wiring がない

## 3. pass_condition
- major contradiction なし
- old wording なし
- implementation leak なし
- Boss が freeze candidate として扱ってよいと判断できる

## 4. result_labels
- pass
- pass_with_minor_wording_fix
- hold_for_major_revision
