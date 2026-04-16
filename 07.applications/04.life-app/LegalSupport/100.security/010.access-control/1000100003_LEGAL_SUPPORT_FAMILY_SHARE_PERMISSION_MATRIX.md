# ============================================================
# LEGAL SUPPORT FAMILY SHARE PERMISSION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: security
subdomain: access-control
schema: life

roles:
  owner:
    description:
      - 案件の作成者・管理者
  shared_family_viewer:
    description:
      - 共有範囲のみ閲覧可能
  professional_share_target:
    description:
      - 将来拡張対象

permission_matrix:

  legal_case_summary:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: true
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  fact_timeline:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: selected_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  stakeholder:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: family_visible_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  document_item:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: shared_flag=true_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  question_list:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: selected_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  consultation_note:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: selected_summary_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  action_item:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: selected_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  deadline_item:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: selected_only
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

  expense_record:
    owner:
      read: true
      write: true
      export: true
    shared_family_viewer:
      read: disabled_by_default
      write: false
      export: false
    professional_share_target:
      read: future_only
      write: false
      export: false

permission_rules:
  - family共有は案件単位で owner が有効化する
  - family共有中でも entity ごとに除外を持てる
  - private notes は family共有対象外
  - expense_record は既定で family共有対象外
  - shared_family_viewer に編集権限は与えない
