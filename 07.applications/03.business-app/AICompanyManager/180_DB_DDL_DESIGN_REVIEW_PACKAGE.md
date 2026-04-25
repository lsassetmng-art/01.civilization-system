# ============================================================
# AICompanyManager DB DDL Design Review Package
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase C
status: ddl-review-package-created
db_reviewer: 佐藤（DB担当）

## 1. Purpose

本書は AICompanyManager の DB DDL Design Review Package である。

このパッケージは DB適用前の設計レビュー用である。
まだ DATABASE_URL へは適用しない。

## 2. Review Policy

佐藤（DB担当）は以下を確認する。

- schema が business で正しいか
- AIWorkerOS 側の内部正本を複製していないか
- app-side operation canon として妥当か
- table naming が business-app として妥当か
- uuid / timestamptz / jsonb の使い方が妥当か
- external FK を安易に張っていないか
- additive-only migration として安全か
- RLS 方針が owner_user_id ベースで妥当か
- index が検索導線に対して妥当か
- delivery / approval / return / audit の証跡が残るか

## 3. Files in This Package

| file | purpose |
|---|---|
| 181_DB_DDL_CANDIDATE_BUSINESS_AI_COMPANY_MANAGER.sql | DDL候補 |
| 182_DB_INDEX_CANDIDATE_BUSINESS_AI_COMPANY_MANAGER.sql | Index候補 |
| 183_DB_RLS_CANDIDATE_BUSINESS_AI_COMPANY_MANAGER.sql | RLS候補 |
| 184_DB_APPLY_PRECHECKLIST.md | DB適用前チェックリスト |
| 185_SATO_DB_REVIEW_MEMO.md | 佐藤レビュー観点 |
| 190_PHASE_C_COMPLETION_REPORT.md | Phase C完了報告 |

## 4. Canonical DB Boundary

BusinessOS side:
- human-facing operation
- project
- policy
- review
- return
- approval
- delivery
- queue meaning
- audit log

AIWorkerOS side:
- AI employee identity
- President / Manager / Leader / Worker internal pipeline
- AI growth
- AI series tendency
- AI internal prompt canon
- AI execution reasoning

## 5. Apply Rule

DB適用はこの Phase C では行わない。

実DB適用は Phase D 以降で、以下が揃った場合のみ行う。

- Boss の明示GO
- 佐藤（DB担当）レビューOK
- additive-only確認
- DATABASE_URL 確認
- 方法Aの psql one-block 化
