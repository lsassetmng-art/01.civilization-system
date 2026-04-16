# ============================================================
# LEGAL SUPPORT CONTROLLED VOCABULARY AUDIT NOTE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

audit_focus:
  - action 名が final lock と一致しているか
  - enum registry と controlled vocabulary が矛盾していないか
  - UI表示語彙が法的判断誤認を生まないか
  - share / export / handoff の語が混線していないか

current_stable_terms:
  - plus_family
  - family_share
  - owner
  - shared_family_viewer
  - preview_cross_app_handoff
  - create_cross_app_handoff
  - normal / sensitive / private
  - owner_dashboard / family_dashboard

remaining_watch_points:
  - document_subcategory strict enum 化の要否
  - professional_future の正式有効化時の語彙追加
  - create_cross_app_handoff response の最終固定時の用語整合
