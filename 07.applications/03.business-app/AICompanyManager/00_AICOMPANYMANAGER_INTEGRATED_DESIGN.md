# ============================================================
# AICompanyManager Integrated Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AH
status: integrated-design-regenerated
generated_at: 20260426_175049
phase_ah_result: PASS



============================================================
SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/000_INDEX.md
============================================================

# ============================================================
# AICompanyManager INDEX
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AH
status: company-common-rules-completed
owner: Boss
prepared_by: Zero

## Latest Phase AH

Reflected:
- 会社共通ルール
- no separate 設計開発規約 field
- company_common_rules state
- company-level rules consolidated

## Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED


============================================================
SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/001_OVERVIEW.md
============================================================

# ============================================================
# AICompanyManager OVERVIEW
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase A
status: active-design

## 1. App Summary

AICompanyManager は、人間が AI 企業を運営するための business-app である。

人間はアプリから会社方針、事業方針、目標、制約、納品条件を入力する。
AIWorkerOS 側の President / Manager / Leader / Worker パイプラインは、その入力を受け取り、事業計画、部門別アクション、成果物定義、タスク実行、レビュー、統合、納品準備までを進める。

AICompanyManager は以下を担当する。

- 人間による方針入力
- AI企業組織の運用画面
- President / Manager / Leader / Worker の進捗表示
- 成果物レビュー状態の表示
- 差し戻し履歴の表示
- 納品前承認
- 人間への最終納品
- 操作履歴、承認履歴、納品履歴の管理
- offline-first UI と queue 表示

## 2. Non-Goal

AICompanyManager は、AI 社員の人格、能力、成長差分、内部推論、シリーズ傾向、実行知能を直接保有しない。

それらは AIWorkerOS 側の責務である。

AICompanyManager は、AIWorkerOS の内部パイプラインを business-app として人間が操作できるようにする運用アプリであり、AIWorkerOS の正本を複製しない。

## 3. Core Concept

人間が方針を出す。
President が事業計画に変換する。
Manager が部門・領域別の実行方針に分解する。
Leader が成果物とタスクへ分解する。
Worker がタスクを実施して成果物を作成する。
Leader が成果物をレビューし、統合する。
Manager が部門成果として確認する。
President が全体成果を確認する。
人間が最終承認し、納品物を受け取る。

## 4. Canonical Flow

Human
→ President
→ Manager
→ Leader
→ Worker
→ Leader Review
→ Manager Integration Review
→ President Final Review
→ Human Approval
→ Delivery

## 5. Design Policy

- BusinessOS 側は運用・契約・人間向け UI を担当する
- AIWorkerOS 側は AI 社員実体・内部パイプライン・AI実行を担当する
- CommonOS は UI、shell、list/detail/form、sync presentation、queue presentation に利用する
- 業務正本、承認、納品履歴は BusinessOS 側に残す
- AI成長差分、AI社員内部実行ログ、シリーズ傾向は AIWorkerOS 側に残す


============================================================
SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/3200_PHASE_AH_COMPANY_COMMON_RULES_ROADMAP.md
============================================================

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


============================================================
SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/3210_COMPANY_COMMON_RULES_CANON.md
============================================================

# ============================================================
# AICompanyManager Company Common Rules Canon
# ============================================================

phase: Phase AH
status: company-common-rules-canon-created

## 1. Canonical Name

Use:

- 会社共通ルール

## 2. Removed Names

Do not keep these as separate user-facing sections:

- 会社規約
- 設計開発規約
- 設計開発ルール

## 3. Meaning

会社共通ルール is the single company-level bucket for:

- company regulations
- design/development guardrails
- quality standards
- security standards
- delivery standards
- prohibited actions
- one-block output rules
- other company-wide rules

## 4. Department Boundary

Departments may have department-specific execution rules.

Departments do not own the shared company-wide design/development canon separately.

## 5. Work Packet Inheritance

When work packets are distributed to a department, 会社共通ルール is automatically inherited as company-level context.


============================================================
SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/3290_PHASE_AH_COMPANY_COMMON_RULES_COMPLETION_REPORT.md
============================================================

# ============================================================
# AICompanyManager Phase AH Company Common Rules Completion Report
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase AH
status: company-common-rules-completed
generated_at: 20260426_175049

## 1. Result

PASS

## 2. Reflected Items

- company-level rule bucket renamed to 会社共通ルール
- company_common_rules state added
- old company_rules / design_development_rules migrated into company_common_rules
- separate design/development rule section removed from UI concept
- company common rule upload added
- dashboard duplicate rule count hidden by Phase AH enhancer

## 3. Evidence

check_log:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/logs/20260426_175049_phase_ah_company_common_rules/010_phase_ah_company_common_rules_check.log

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
