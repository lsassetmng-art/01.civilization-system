# ============================================================
# PHASE 1 ADOPTION RULE
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_1 共通部品候補の採用判定ルールを固定する
  - 重複定義、過剰共通化、責務逆流を防ぐ

adoption_rules:

  reuse_threshold_rule:
    - 正式採用候補は最低2つ以上の app で自然な reuse が確認できること
    - 1 app 専用のものは共通部品へ上げない

  boundary_rule:
    - 専門判断ロジックは共通化しない
    - app固有の誘導文は共通化しない
    - app固有スコアリングは共通化しない
    - 共通部品は構造、状態、監査、共有、入出力の骨格に寄せる

  schema_rule:
    - 共通部品化しても主データ境界は各app責務を維持する
    - 共通部品は app schema の意味を奪わない
    - 共通部品は共通 contract と参照面を提供する

  audit_rule:
    - 凍結、レビュー、提出、共有に関わるものは監査可能性を優先する
    - 後から説明できる履歴構造を優先する

  bridge_rule:
    - foundation common と重複する場合は bridge で整理する
    - 無理に Life App 側へ二重正本を作らない
    - 既存 common の上位/下位/横断関係を先に明示する

  adoption_sequence_rule:
    - 先に phase_1 最優先6件を固める
    - 次に foundation common との bridge を作る
    - その後 secondary_priority を審査する

phase_1_adoption_gate:
  required_conditions:
    - reuse target が2 app以上ある
    - 専門判断ロジックを含まない
    - app固有文言依存が強すぎない
    - 監査または整理構造として説明可能
    - foundation common と衝突しない

phase_1_bridge_targets:
  - frozen_snapshot_component -> Revision History Common / Export Common
  - review_resolution_component -> Advisor Share Common
  - document_intake_metadata_component -> Export Common / Search系共通
  - case_ledger_component -> Status Pipeline Common
  - fact_timeline_component -> Checklist Execution Common 補助

hold_conditions:
  - app固有業務意味が強すぎる
  - 専門判断ロジックを内包する
  - reuse target が1 appしかない
  - 既存 foundation common と重複整理が未了
  - Persona / 背景のように別の共通要件系と境界確認が必要

final_adoption_rule_judgment:
  - phase_1 最優先6件は adoption gate を満たしやすい
  - よって official adoption candidate として先に固定してよい
