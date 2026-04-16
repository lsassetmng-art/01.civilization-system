# MealPlanner Change Impact Checklist

## 1. purpose
設計変更時に、どこへ影響が出るかを漏れなく見るためのチェックリスト。

## 2. usage
変更案が出たら、以下の観点を順に確認する。

## 3. impact_axes

### axis_01_business
- 価値提案が変わるか
- free / paid の差が変わるか
- AIチャットのみサポート方針に影響するか

### axis_02_boundary
- life schema に影響するか
- CX22073JW 境界に影響するか
- LifeOS Publish 境界に影響するか
- private / household / lifeos_public に影響するか

### axis_03_model
- entity 追加 / 削除 / 意味変更が必要か
- enum 変更が必要か
- snapshot 方針に影響するか

### axis_04_api
- request/response field 追加が必要か
- required / optional / nullable が変わるか
- screen I/O へ波及するか

### axis_05_ui
- 画面追加が必要か
- gating 変更が必要か
- copy / validation copy が変わるか
- component props / event payload が変わるか

### axis_06_policy
- versioning に影響するか
- retention に影響するか
- csv policy に影響するか
- quality score policy に影響するか

### axis_07_operations
- AIチャット FAQ を直す必要があるか
- ストア案内境界を直す必要があるか

## 4. mandatory_documents_to_recheck
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- related exact payload / model / interface docs

## 5. risk_labels
- low:
  - wording only
- medium:
  - UI / API / policy のどれかに影響
- high:
  - boundary / pricing / schema / source_of_truth に影響

## 6. note
変更規模が medium 以上なら、integrated + detail + consistency の3点を必ず見直す。
