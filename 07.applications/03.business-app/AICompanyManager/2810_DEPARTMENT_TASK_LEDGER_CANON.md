# ============================================================
# AICompanyManager Department Task Ledger Canon
# ============================================================

phase: Phase AD
status: department-task-ledger-canon-created

## 1. Canon

Department-level ledger is called:

- 部門別タスク台帳

It is not limited to design documents.

It tracks:

- deliverable name
- task name
- work type
- responsible department
- responsible role
- responsible robot
- reference files
- attached files
- applicable rules
- status
- delivery output
- handoff link

## 2. File Types

Reference or attached files may include:

- design document
- specification
- rough design
- design instruction
- reference image
- customer material
- error log
- test result
- meeting note
- handoff file
- delivery file
- other

## 3. Development Example

deliverable_name:
- 窓口業務システム

task rows:
- 窓口業務システム設計書作成
- 窓口業務UI作成
- 窓口業務Java作成
- 窓口業務テスト作成

reference files:
- 窓口業務設計書
- 会社設計開発ルール
- テスト結果

## 4. Design Company Example

deliverable_name:
- 新商品LPデザイン

task rows:
- ラフ案作成
- キービジュアル作成
- PC版デザイン作成
- SP版デザイン作成
- 納品データ作成

reference files:
- ブランドガイドライン
- 参考画像
- 顧客ヒアリング資料

## 5. President-Origin Provisional Rule

If the work comes from President policy and detailed breakdown does not exist yet:

- deliverable_name may equal task_name temporarily
- Manager creates broad rows
- Leader later refines into deliverable units and task rows
