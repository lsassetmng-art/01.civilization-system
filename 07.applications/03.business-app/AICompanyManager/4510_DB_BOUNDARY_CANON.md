# ============================================================
# AICompanyManager DB Boundary Canon
# ============================================================

phase: Phase AV
status: db-boundary-canon-created

## 1. Canonical DB Role

AICompanyManager DB stores the management facts for operating AI companies.

It does not store the AIWorker core identity canon itself.

## 2. Owned Canon

AICompanyManager owns:

- AI企業設定
- AI企業ごとの事業領域
- AI企業ごとの会社共通ルール
- 部門
- 組織
- 組織ツリー
- 組織別ロボット配置
- 部門別タスク台帳
- CSV取込履歴
- AI自動処理の進行状態
- レビュー・承認待ち一覧
- 納品候補
- 承認/差し戻し履歴

## 3. Referenced External Canon

AICompanyManager references:

- AIWorkerOS robot identity
- AIWorkerOS role/personality/model profile
- BusinessOS app context
- CommonOS UI foundation
- uploaded reference files / supplemental materials metadata

## 4. Company Common Rules

会社共通ルール is one company-level rule bucket.

It includes:

- company regulations
- design/development rules
- quality standards
- security standards
- prohibited actions
- delivery standards
- one-block rules

Do not create a separate design-development-rule section.

## 5. Department Task Ledger

部門別タスク台帳 is Manager intake ledger.

It stores only the user-facing intake row.

Manager / Leader / Worker breakdown is automatic AI workflow and should be stored as internal workflow state/log, not routine user operation screens.

## 6. File Handling

参照ファイル:
- 作業前・作業中に読む資料
- task row decision context

補足資料:
- optional supporting material
- screenshots, examples, notes, drafts, extra context

DB should store metadata first.

Actual file body storage route can be finalized later.

## 7. Review and Approval

User-facing review is final delivery approval.

AI review itself is automatic.

DB should distinguish:

- AI auto review state
- delivery candidate
- human approval
- human rejection
- resubmission required

## 8. Safety

This phase defines design only.

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED
