# ============================================================
# PRIVACY AUDIT PERMISSION GATE
# ============================================================

status: fixed

purpose:
  - 高機微健康データを扱う前提で、実装前の安全条件を固定する

privacy_rules:
  - 健康データは高機微情報として扱う
  - 初期共有状態は非共有
  - note_share_flag の初期値は false
  - export_permission_flag の初期値は false
  - provider credential detail をUI表示しない
  - shared scope を超える値を Family Care に返さない

audit_targets:
  - data_share_setting change
  - export_job creation
  - correction_record creation
  - provider link state change

permission_rules:
  owner:
    allowed:
      - full self data view
      - edit self data
      - create export
      - manage family care
  recipient:
    allowed:
      - only shared scope view
    denied:
      - unshared metric view
      - private note view unless explicitly allowed
      - export unless export_permission_flag = true

security_review_items:
  - scope leak がないか
  - note leak がないか
  - export unauthorized generation がないか
  - provider detail exposure がないか
  - reference wording が医療断定になっていないか

release_blockers:
  - Family Care scope を越える表示がある
  - private notes が recipient に見える
  - export 権限分離が効かない
  - provider credential 相当情報が露出する
