# AICompanyManager DB Status Enum Canon

phase: Phase AW
status: status-enum-canon
db_apply: false

company_status:
- active
- inactive
- archived

department_status:
- active
- inactive
- archived

organization_status:
- active
- inactive
- archived

assignment_status:
- active
- inactive
- removed

work_type:
- 設計
- 実装
- デザイン
- 修正
- 調査
- レビュー
- 資料作成
- 納品準備
- 引き継ぎ

task_status:
- 未着手
- 進行中
- レビュー中
- 完了
- 保留

priority:
- 高
- 中
- 低

source_type:
- manual
- csv
- ai_generated
- imported

file_role:
- reference_file
- supplemental_material

import_status:
- previewed
- imported
- partially_imported
- failed
- cancelled

validation_status:
- valid
- invalid
- skipped
- imported

workflow_status:
- queued
- running
- completed
- failed
- cancelled
- waiting

review_status:
- 承認待ち
- 承認済み
- 差し戻し
- 修正待ち
- 取消

action_type:
- approve
- reject
- request_revision

candidate_status:
- draft
- ai_reviewed
- approval_waiting
- approved
- rejected
- revision_required
