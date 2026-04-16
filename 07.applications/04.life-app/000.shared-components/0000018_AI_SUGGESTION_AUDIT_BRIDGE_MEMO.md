# ============================================================
# AI SUGGESTION AUDIT BRIDGE MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - ai_suggestion_audit_component を独立正本化せず、
    review / snapshot / revision 系との橋渡しで整理する
  - AI提案の採否、差分、監査をどこまで共通化するかを固定する

bridge_subject:
  - ai_suggestion_audit_component

bridge_targets:
  - review_resolution_component
  - frozen_snapshot_component
  - Revision History Common

bridge_interpretation:
  - ai_suggestion_audit_component は Life App 側の独立親候補ではなく、
    review / snapshot / revision の横断監査補強要素として扱う
  - 提案生成そのものではなく、
    before / after / adopted / rejected の監査関係だけを bridge で整理する

bridge_scope:
  common_bridge_inside:
    - suggestion_type
    - before_snapshot_id
    - after_snapshot_id
    - adopted_flag
    - rejection_reason
    - reviewer
  keep_outside:
    - app固有AI提案生成
    - app固有採否判断ロジック
    - app固有の説明文生成
    - app固有の提案ランキング

responsibility_split:
  review_resolution_component_side:
    - comment / issue / resolution state
    - 指摘解決の状態管理
  frozen_snapshot_component_side:
    - before/after fixed state
    - frozen evidence point
  Revision History Common_side:
    - diff / compare / restore visibility
    - revision chronology
  life_app_bridge_side:
    - AI suggestion 採否の最小監査 contract
    - AI suggestion と review/snapshot/revision の relation binding

anti_duplication_rule:
  - ai_suggestion_audit_component を AI機能本体の親 family にしない
  - snapshot / revision / review の正本責務を奪わない
  - suggestion audit を単独で広い parent common に昇格しない

life_app_use_targets:
  - CareerLaunch
  - LegalSupport
  - InheritanceSupport
  - EndOfLifePlanner
  - future advisor assist apps

final_bridge_judgment:
  - ai_suggestion_audit_component は bridge-strengthening-only のままでよい
  - review / snapshot / revision 側を正本として参照し、監査 relation だけを補う
