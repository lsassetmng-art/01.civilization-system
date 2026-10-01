# AICompanyManager V10L-C1I Manager/Leader routing and granularity canon

## 1. Status

This document fixes the routing and granularity assumptions before C2/C3 execution unlock.

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: NO
- SERVER_PATCH: NO
- Purpose: document/canon checkpoint only

## 2. Multiple Manager / multiple Leader support

AICompanyManager must support real operation with multiple department Managers and multiple section Leaders.

Canonical structure:

AI企業
- 部門A -> 部長/Manager A
  - 課A-1 -> 課長/Leader A-1
  - 課A-2 -> 課長/Leader A-2
- 部門B -> 部長/Manager B
  - 課B-1 -> 課長/Leader B-1
  - 課B-2 -> 課長/Leader B-2

Rules:

1. A company can have multiple departments.
2. A department can have one or more Manager placements depending on operation model.
3. A department can have multiple sections.
4. A section can have one or more Leader placements depending on operation model.
5. A Manager major item must belong to a department / Manager context.
6. A Leader middle item must belong to a section / Leader context.
7. Worker work units must belong to an assigned execution context.

## 3. Completed UI scope as of C1H

C1H completed browser-side selection UI only.

Completed:

- Registered major item operation panel
- Multiple major item selection
- Select all
- Clear selection
- Handoff confirmation UI
- Delete confirmation UI
- Yes / No confirmation
- DB/API disabled safety message

Not completed yet:

- Actual handoff DB update
- Actual delete/archive DB update
- API POST execution
- Multiple Leader routing decision at Yes execution
- Missing Leader assignment validation

## 4. Canonical work granularity

The user's intended granularity is accepted with one wording correction.

Recommended canonical wording:

- 大項目 = 担当開発領域 / 業務領域
- 中項目 = 画面機能 / 機能単位
- 小項目 = 作業種別 / 実行タスク

Examples:

大項目:
- ロボット配置表示の整備
- 引き継ぎ前確認画面の整備
- 承認導線の整備

中項目:
- ロボット配置一覧画面
- 部門詳細画面
- 課詳細画面
- 確認モーダル
- 承認待ち一覧

小項目:
- 画面設計
- API payload固定
- UI実装
- 保存前確認
- テスト
- 証跡作成

## 5. Role flow

President:
- 方針を出す

Manager / 部長:
- 大項目へ分解する

Leader / 課長:
- 中項目・小項目へ分解する

Worker:
- 設計、実装、テスト、証跡作成を実行する

## 6. Important wording rule

Avoid treating 大項目 as a person directly.

Do not define:

- 大項目 = システム開発者そのもの

Use:

- 大項目 = 開発領域 / 業務領域
- 担当 = 部門 / 部長Manager / 課長Leader / Worker

Reason:

- If 大項目 is treated as the person itself, assignment and work item identity become mixed.
- Multiple Managers / multiple Leaders need explicit assignment fields separate from the item name.

## 7. Required routing fields for C2/C3

C2/C3 must not execute DB/API writes unless routing is clear.

Required concepts:

大項目:
- company_id
- department_id
- manager_placement_id or manager context
- assigned_leader_id / assigned_leader_label / section_id if ready for handoff
- handoff_status_code
- decomposition_status_code

中項目:
- parent major item id
- section_id
- leader_placement_id
- middle item name
- status

小項目:
- parent middle item id
- worker_placement_id
- work_type
- task status

## 8. C2/C3 unlock rule

Before actual Yes execution:

1. selected major items must have valid IDs
2. each selected item must be pending / not archived / not already handed off
3. handoff target Leader must be clear
4. if multiple Leaders are possible and target is ambiguous, stop before write
5. confirmation screen must show target item titles
6. confirmation screen must show target Leader / section when handoff writes are enabled
7. DB/API write must be separated from UI-only confirmation
8. Sato DB review is required before any SQL/API write execution
