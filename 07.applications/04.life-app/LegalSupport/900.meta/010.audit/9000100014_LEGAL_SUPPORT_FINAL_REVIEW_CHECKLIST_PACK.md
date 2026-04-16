# ============================================================
# LEGAL SUPPORT FINAL REVIEW CHECKLIST PACK
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

purpose:
  - 実装再開前に確認すべき最終レビュー項目をまとめる
  - 固定済み事項と最終確認事項を分ける
  - 設計漏れを減らす

# ------------------------------------------------------------
# A. hard lock confirmation
# ------------------------------------------------------------
hard_lock_confirmation:
  - [ ] schema が life で統一されている
  - [ ] pricing が Free / PlusFamily(月額500円) で統一されている
  - [ ] roles が owner / shared_family_viewer / professional_share_target_future で統一されている
  - [ ] action 名が final lock と一致している
  - [ ] response envelope が final lock と一致している
  - [ ] error code の主要語彙が揺れていない

# ------------------------------------------------------------
# B. data model confirmation
# ------------------------------------------------------------
data_model_confirmation:
  - [ ] entity field matrix と nullable/default matrix が矛盾していない
  - [ ] enum registry と controlled vocabulary が矛盾していない
  - [ ] document_subcategory 候補語彙が過不足ない
  - [ ] checklist_progress / family_share_membership / notification_preference の役割が明確
  - [ ] soft delete 対象と archive 対象の境界が明確

# ------------------------------------------------------------
# C. sharing and masking confirmation
# ------------------------------------------------------------
sharing_and_masking_confirmation:
  - [ ] family share は plus_family only で一貫している
  - [ ] family preview / export / dashboard の visible/hidden が整合している
  - [ ] confidentiality_level と shared_flag の関係が明確
  - [ ] expense_record の family 非表示方針が一貫している
  - [ ] masking preview example が capability matrix と矛盾していない

# ------------------------------------------------------------
# D. output and handoff confirmation
# ------------------------------------------------------------
output_and_handoff_confirmation:
  - [ ] summary profile と export profile が区別されている
  - [ ] consultation_prep packet が export_bundle と混線していない
  - [ ] preview_cross_app_handoff と create_cross_app_handoff が分離されている
  - [ ] handoff payload が private note / assumption を含まない
  - [ ] disclaimer variation が用途ごとに適切

# ------------------------------------------------------------
# E. dashboard and screen confirmation
# ------------------------------------------------------------
dashboard_and_screen_confirmation:
  - [ ] owner_dashboard と family_dashboard が分離されている
  - [ ] field-to-screen mapping に未接続 field が多すぎない
  - [ ] legal_case_detail が hub として機能している
  - [ ] family dashboard に destructive action がない
  - [ ] export / handoff / masking preview screen の役割分離が明確

# ------------------------------------------------------------
# F. audit confirmation
# ------------------------------------------------------------
audit_confirmation:
  - [ ] high severity action が audit 強制対象になっている
  - [ ] preview と actual execute の監査差分が明確
  - [ ] audit snapshot minimization policy がある
  - [ ] handoff audit が separate entity で定義されている
  - [ ] export 実行時の included_sections 保持方針が明確

# ------------------------------------------------------------
# G. deferred scope confirmation
# ------------------------------------------------------------
deferred_scope_confirmation:
  - [ ] professional direct edit は deferred と明記されている
  - [ ] OCR/file binary exact は deferred と明記されている
  - [ ] public share link は不採用方針が明記されている
  - [ ] human support workflow は設計対象外と明記されている

review_exit_criteria:
  - hard lock 領域に重大矛盾がない
  - schema / action / response / masking / audit に未解決の衝突がない
  - 実装を始めなくても、再開時に迷わない程度まで整理されている
