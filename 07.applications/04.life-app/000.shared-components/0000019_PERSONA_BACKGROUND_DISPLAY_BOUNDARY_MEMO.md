# ============================================================
# PERSONA BACKGROUND DISPLAY BOUNDARY MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - Persona and Background Display Common の責務境界を固定する
  - stakeholder_registry_component や Advisor Share Common と混線しないようにする
  - Life系共通要件としてどこまで共通化するかを明確化する

subject_component:
  - Persona and Background Display Common

boundary_position:
  - Life App 共通要件との接続候補
  - display / rendering / selection / lightweight behavior 側の共通
  - 人物構造正本や共有権限正本ではない

common_inside:
  - persona_display_slot
  - background_display_slot
  - current_persona_reference
  - current_background_reference
  - persona_change_action
  - background_change_action
  - lightweight_rendering_mode
  - device_density_safe_display
  - fallback_display_rule

keep_outside:
  - stakeholder_registry_component の人物/組織構造正本
  - Advisor Share Common の viewer/editor/revocation 権限意味
  - persona 自体の生成ロジック
  - background 資産の制作ロジック
  - app固有の会話文や演出文
  - app固有の表示優先順位ルール

responsibility_split:

  persona_background_display_common_side:
    - 何を表示するかの参照
    - どう軽量表示するか
    - 変更アクションの入口
    - 端末別の表示安全性
    - fallback の最小ルール

  stakeholder_registry_component_side:
    - 人/組織/役割/関係性の構造
    - relation_to_owner
    - role
    - contact_memo
    - important_flag

  advisor_share_common_side:
    - viewer/editor 権限
    - comment route
    - share revocation
    - review sharing flow

  app_specific_side:
    - 表示する persona の意味づけ
    - 背景テーマの app固有演出
    - 個別 app の会話 / 誘導 / UX 文脈

anti_duplication_rules:
  - persona 表示と stakeholder 構造を同一部品にしない
  - persona/background 表示と share 権限を同一部品にしない
  - display common を asset master 正本にしない
  - app固有演出を共通表示部品へ混ぜない

life_app_reference_targets:
  - CareerLaunch
  - LegalSupport
  - InheritanceSupport
  - EndOfLifePlanner
  - other Life apps with persona + background requirement

adoption_interpretation:
  - Persona and Background Display Common は有力候補
  - ただし独立親 family として急いで昇格させず、
    まずは boundary 固定済みの display common 候補として扱う
  - 後続で app別 reference note を作るのが安全

final_boundary_judgment:
  - Persona and Background Display Common は共通化可能
  - ただし display / reference / lightweight behavior に責務を限定する
