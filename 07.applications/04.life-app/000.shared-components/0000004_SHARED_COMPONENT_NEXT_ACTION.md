# ============================================================
# SHARED COMPONENT NEXT ACTION
# Life App Common
# ============================================================

status: canonical
phase: design-only

next_action_roadmap:

  phase_1:
    objective:
      - Life App 共通候補のうち、最優先6件を正式採用候補として固定する
    target_components:
      - case_ledger_component
      - stakeholder_registry_component
      - fact_timeline_component
      - document_intake_metadata_component
      - frozen_snapshot_component
      - review_resolution_component
    expected_outputs:
      - official adoption memo
      - component boundary memo
      - app reference note

  phase_2:
    objective:
      - foundation common と Life共通候補の接続ルールを固定する
    target_foundations:
      - Document Template Common
      - Revision History Common
      - Checklist Execution Common
      - Status Pipeline Common
      - Offline Draft Queue Common
      - Export Common
      - Advisor Share Common
    expected_outputs:
      - bridge map
      - duplication check
      - conflict resolution note

  phase_3:
    objective:
      - secondary priority 群を正式候補へ上げるか判定する
    target_components:
      - deadline_notification_policy_component
      - share_export_pack_component
      - search_tag_cross_filter_component
      - offline_draft_conflict_component
      - ai_suggestion_audit_component
    expected_outputs:
      - secondary adoption decision
      - hold / adopt / split judgment

decision_rules:
  - Life App 共通部品は app固有ロジックを飲み込まない
  - foundation common と重複する場合は bridge で整理する
  - 正式採用前に reuse target を最低2つ以上確認する
  - Persona and Background Display Common は Life系共通要件との整合を優先する

immediate_recommendation:
  - 次は phase_1 の最優先6件について official adoption memo を作る
