# ============================================================
# LIFE APP PRICING FIX CHECK LEDGER
# ============================================================

status: canonical-check-ledger
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero
source_basis: user-specified-10-files
purpose:
  - 10本のライフアプリ情報源を前提に、価格の固定状態を確認する
  - 金額固定済みを確認する
  - 次の価格正本整理の残件を明確にする

summary:
  fixed_clean_count: 10
  fixed_with_minor_label_drift_count: 0
  conflict_detected_count: 0
  amount_unfixed_count: 0

status_legend:
  - fixed_clean: 金額・プラン構成とも固定

included_sources:
  - 000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md
  - 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md
  - 0000008_BUSINESS_LEGAL_SUPPORT_MD_FULL_INTEGRATED_REGENERATED.md
  - 999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md
  - 00_TRAINING_COACH_FULL_INTEGRATED_REGENERATED.md
  - 000_MEAL_PLANNER_FULL_INTEGRATED.md
  - 999_END_OF_LIFE_PLANNER_INTEGRATED_CANONICAL.md
  - 0000007_BODYMETRICS_FULL_INTEGRATED_CANONICAL.md
  - 0000000004_MONEY_PLANNER_MD_MERGED_INTEGRATED.md
  - 0000009_CAREER_LAUNCH_FULL_INTEGRATED.md

# ============================================================
# CHECK TABLE
# ============================================================

| No | App | Pricing Status | Canonical Pricing Summary | Evidence File | Evidence Summary | Action |
|---|---|---|---|---|---|---|
| 1 | InheritanceSupport | fixed_clean | Free 0円 / Plus 500円 / Family 800円 | 000_INHERITANCE_SUPPORT_INTEGRATED_CANONICAL.md | pricing に free:0 / plus:500 / family:800 が直接記載 | 現状維持 |
| 2 | LifePlanner | fixed_clean | Free 0円 / Family 500円 | 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md | root overview・pricing policy・pre implementation handoff を優先し、一致化済み | 現状維持 |
| 3 | BusinessLegalSupport | fixed_clean | Free 0円 / Standard 500円 / Bridge 900円 | 0000008_BUSINESS_LEGAL_SUPPORT_MD_FULL_INTEGRATED_REGENERATED.md | overview pricing と pricing policy の双方で 0/500/900 を確認 | 現状維持 |
| 4 | LegalSupport | fixed_clean | Free 0円 / PlusFamily 500円 | 999900_LEGAL_SUPPORT_INTEGRATED_CANONICAL.md | plus_family を canonical key に統一し、Family Plus 表記も PlusFamily に統一 | 現状維持 |
| 5 | TrainingCoach | fixed_clean | Free 0円 / Premium 500円/月 | 00_TRAINING_COACH_FULL_INTEGRATED_REGENERATED.md | pricing section と later summary の双方で Free / Premium(500円) を確認 | 現状維持 |
| 6 | MealPlanner | fixed_clean | 無料 0円 / 有料 500円/月 | 000_MEAL_PLANNER_FULL_INTEGRATED.md | fixed_now と pricing audit の双方で 無料 / 有料500円 に統一済み | 現状維持 |
| 7 | EndOfLifePlanner | fixed_clean | Free 0円 / Family 500円 / Family Plus 900円 | 999_END_OF_LIFE_PLANNER_INTEGRATED_CANONICAL.md | pricing に free:0 / family:500 / family_plus:900 が直接記載 | 現状維持 |
| 8 | BodyMetrics | fixed_clean | Free 0円 / Family Care 300円/月 | 0000007_BODYMETRICS_FULL_INTEGRATED_CANONICAL.md | pricing_and_support と plans の双方で 0/300 を確認 | 現状維持 |
| 9 | MoneyPlanner | fixed_clean | Free 0円 / Plus Family 500円/月 | 0000000004_MONEY_PLANNER_MD_MERGED_INTEGRATED.md | pricing_design と pricing policy の双方で free 0 / plus_family 500 を確認 | 現状維持 |
| 10 | CareerLaunch | fixed_clean | Free 0円 / Pro 500円/月 | 0000009_CAREER_LAUNCH_FULL_INTEGRATED.md | pricing policy / feature tier / fixed now を 2プラン前提に同期し、統合版も再生成 | 現状維持 |

# ============================================================
# DETAIL NOTES
# ============================================================

## 1. Canonical Pricing Snapshot
- InheritanceSupport: Free 0 / Plus 500 / Family 800
- LifePlanner: Free 0 / Family 500
- BusinessLegalSupport: Free 0 / Standard 500 / Bridge 900
- LegalSupport: Free 0 / PlusFamily 500
- TrainingCoach: Free 0 / Premium 500
- MealPlanner: Free 0 / Paid 500
- EndOfLifePlanner: Free 0 / Family 500 / Family Plus 900
- BodyMetrics: Free 0 / Family Care 300
- MoneyPlanner: Free 0 / Plus Family 500
- CareerLaunch: Free 0 / Pro 500

## 2. Remaining Fix Order
- pricing canonical cleanup complete
