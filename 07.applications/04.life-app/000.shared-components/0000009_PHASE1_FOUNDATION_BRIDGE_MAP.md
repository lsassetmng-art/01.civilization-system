# ============================================================
# PHASE 1 FOUNDATION BRIDGE MAP
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - Life App phase_1 共通候補と既存 foundation common の接続関係を固定する
  - 二重正本を防ぎ、上位/下位/補助関係を明示する
  - 後続 app が参照先を迷わないようにする

bridge_map:

  case_ledger_component:
    bridge_targets:
      - Status Pipeline Common
    bridge_type:
      - case structure -> status/progression support
    interpretation:
      - case_ledger_component は案件箱の共通骨格
      - Status Pipeline Common は案件の進行状態表現を補助する
    anti_duplication_rule:
      - pipeline meaning を case ledger 側へ飲み込まない

  stakeholder_registry_component:
    bridge_targets:
      - Advisor Share Common
      - Persona and Background Display Common
    bridge_type:
      - stakeholder structure -> share/display support
    interpretation:
      - stakeholder_registry_component は関係者構造の正本候補
      - Advisor Share Common は共有権限とコメント導線側
      - Persona and Background Display Common は表示要件側
    anti_duplication_rule:
      - 関係者構造と共有権限ロジックを混ぜない
      - 表示要件と人物構造を混ぜない

  fact_timeline_component:
    bridge_targets:
      - Checklist Execution Common
      - Revision History Common
    bridge_type:
      - fact chronology -> execution support / revision reference
    interpretation:
      - fact_timeline_component は出来事整理の時系列
      - Checklist Execution Common は遂行状態の流れ
      - Revision History Common は文書改訂履歴
    anti_duplication_rule:
      - 事実時系列を改訂履歴と混同しない
      - 実行フローを事実記録へ飲み込まない

  document_intake_metadata_component:
    bridge_targets:
      - Export Common
      - Document Template Common
    bridge_type:
      - intake metadata -> output/export / template linkage
    interpretation:
      - document_intake_metadata_component は入口と metadata の正本候補
      - Export Common は出力実行側
      - Document Template Common は生成テンプレート側
    anti_duplication_rule:
      - intake と export job を同一部品にしない
      - intake metadata と template skeleton を同一化しない

  frozen_snapshot_component:
    bridge_targets:
      - Revision History Common
      - Export Common
    bridge_type:
      - frozen artifact -> revision / export linkage
    interpretation:
      - frozen_snapshot_component は固定時点の保存骨格
      - Revision History Common は改訂/比較の参照先
      - Export Common は出力時の凍結成果物側
    anti_duplication_rule:
      - snapshot 自体と compare UI を同一化しない
      - export job と snapshot storage を同一化しない

  review_resolution_component:
    bridge_targets:
      - Advisor Share Common
      - Revision History Common
    bridge_type:
      - review resolution -> shared review / change trace
    interpretation:
      - review_resolution_component は指摘解決管理の正本候補
      - Advisor Share Common は共有レビュー導線
      - Revision History Common は変更差分追跡の補助
    anti_duplication_rule:
      - コメント解決管理と共有権限を同一化しない
      - コメント解決と改訂履歴を同一化しない

bridge_priority:
  strongest_bridge_pairs:
    - frozen_snapshot_component -> Revision History Common
    - frozen_snapshot_component -> Export Common
    - review_resolution_component -> Advisor Share Common
    - case_ledger_component -> Status Pipeline Common
    - document_intake_metadata_component -> Export Common

bridge_rules:
  - Life App 共通候補は構造正本を担う
  - foundation common は横断挙動、表示、実行、共有、出力を担う
  - 両者が重なる場合は structure side と behavior side に分ける
  - 同一責務を二重定義しない

final_bridge_judgment:
  - phase_1 最優先6件は foundation common と競合せず bridge で整理可能
  - よって Life App 共通候補として前進可能
