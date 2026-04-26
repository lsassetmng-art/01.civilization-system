# ============================================================
# AICompanyManager Phase AH Company Common Rules Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AH
status: company-common-rules-started
owner: Boss
prepared_by: Zero

## 1. Purpose

Unify all company-level rules into one bucket:

- 会社共通ルール

Remove separate fields or screens for:

- 会社規約
- 設計開発規約
- 設計開発ルール

## 2. Company Common Rules Include

会社共通ルール includes:

- company regulations
- company-wide rules
- design/development rules
- PROJECT_GUARDRAILS-style rules
- quality standards
- security standards
- prohibited actions
- delivery standards
- one-block output rules

## 3. UI Rule

Company operation/rule screen should show only:

- 会社共通ルール

Do not show a separate design/development rule section.

## 4. Data Rule

Use:

- company_common_rules

Do not use separate:

- company_rules
- design_development_rules

Old fields may be migrated into company_common_rules.

## 5. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
