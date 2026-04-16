# ============================================================
# CHANGE REQUEST POLICY
# ============================================================

status: fixed

purpose:
  - BodyMetrics の設計固定後の変更取り扱いを明文化する

policy:
  - 未決事項として戻さない
  - 以後の変更は change request として扱う
  - 変更対象は affected documents を列挙して管理する
  - fixed canonical を直接曖昧化しない
  - 変更理由、影響範囲、採否判断を分ける

change_request_minimum_fields:
  - request_title
  - requester
  - reason
  - affected_area
  - affected_documents
  - fixed_decision_before
  - requested_decision_after
  - impact_on_db
  - impact_on_api
  - impact_on_ui
  - impact_on_pricing_optional
  - approval_status

prohibited_change_style:
  - fixed canonical の無断上書き
  - DB / API / UI の片側だけ変更
  - medical boundary を曖昧化する変更
