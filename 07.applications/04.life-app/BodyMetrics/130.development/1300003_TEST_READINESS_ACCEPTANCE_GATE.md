# ============================================================
# TEST READINESS ACCEPTANCE GATE
# ============================================================

status: fixed

purpose:
  - 実装着手前に、何を満たせば設計完了とみなすかを固定する

test_groups:

  db_logic:
    - measured_at と local_date の整合
    - sleep の起床日基準
    - blood pressure timing_code 標準化
    - duplicate import 抑止
    - correction_record 保存整合

  comparison_and_score:
    - personal_7day_average 計算
    - personal_30day_average 計算
    - average_comparison_snapshot 保存
    - health_score_snapshot 保存
    - missing component 再重み付け
    - score version 反映

  api_contract:
    - request field 必須条件
    - response shape 固定
    - null 許容位置
    - error shape 固定
    - Family Care scope 反映

  ui_contract:
    - dashboard card 表示項目
    - trend_analysis comparison panel
    - health_score_center total + breakdown
    - weekly_review summary
    - family_care_settings toggles
    - export_center selectors

  privacy_and_permission:
    - initial non-shared
    - note_share_flag default false
    - export_permission_flag default false
    - recipient scope 制限
    - unauthorized export deny

acceptance_gate:
  design_ready_for_implementation:
    requires:
      - DB responsibility fixed
      - API payload fixed
      - UI display fixed
      - code contracts fixed
      - privacy / permission gate fixed
      - unresolved_items_remaining = none

not_in_scope_yet:
  - SQL 実装
  - API 実装
  - UI 実装
  - provider SDK 実接続
