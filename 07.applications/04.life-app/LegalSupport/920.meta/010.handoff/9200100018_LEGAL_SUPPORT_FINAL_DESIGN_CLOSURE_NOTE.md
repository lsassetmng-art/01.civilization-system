# ============================================================
# LEGAL SUPPORT FINAL DESIGN CLOSURE NOTE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: handoff

closure_purpose:
  - 現時点の LegalSupport 設計バッチを締める
  - 実装はまだ始めず、設計正本をここで一区切りにする
  - 次回再開時に読むべき起点を明確にする

current_state:
  design_mode: true
  implementation_started: false
  schema_fixed: life
  pricing_fixed:
    free: 0
    plus_family: 500

recommended_restart_order:
  - 9000100013_LEGAL_SUPPORT_MASTER_CANONICAL_SINGLE_FILE.md
  - 9000100014_LEGAL_SUPPORT_FINAL_REVIEW_CHECKLIST_PACK.md
  - 0400100022_LEGAL_SUPPORT_ACTION_NAME_FINAL_LOCK.md
  - 0400100023_LEGAL_SUPPORT_STANDARD_RESPONSE_ENVELOPE_FINAL_LOCK.md
  - 0800100006_LEGAL_SUPPORT_FIELD_LEVEL_MASKING_MATRIX.md
  - 1000100005_LEGAL_SUPPORT_OWNER_FAMILY_ACTION_CAPABILITY_MATRIX.md
  - 0600100004_LEGAL_SUPPORT_CROSS_APP_HANDOFF_PAYLOAD_EXACT.md
  - 0400100025_LEGAL_SUPPORT_CROSS_APP_HANDOFF_RESPONSE_FINAL_LOCK.md

what_is_good_enough_now:
  - 全体方針
  - schema
  - pricing
  - entity設計
  - payload major exact
  - share/export/handoff 設計
  - dashboard / family split
  - audit major design
  - vocabulary / naming lock

what_can_wait:
  - implementation DDL
  - API code
  - UI code
  - OCRやファイル本体処理
  - professional collaboration deepening

resume_note:
  - 再開時は「実装するか」「まだ設計を詰めるか」を最初に決めればよい
  - 実装へ進むなら final review checklist から入る
