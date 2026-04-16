# ============================================================
# FIXED INTERFACE AND ANALYSIS POLICY
# ============================================================

status: fixed

pc_tablet_analysis_layout:
  fixed: three_zone_layout

layout_definition:
  top_bar:
    - metric_tabs
    - date_range_selector
    - provider_filter
  main_area:
    - large_trend_graph
    - average_overlay
    - reference_band
  side_panel:
    - latest_value
    - health_score_summary
    - weekly_notes
    - export_shortcuts

default_metric_order:
  - weight
  - blood_pressure
  - sleep
  - steps
  - heart_rate
  - blood_oxygen

graph_display_policy:
  - daily / weekly / monthly を持つ
  - 7日平均 / 30日平均を重ねる
  - reference band を表示する
  - reference は reference と明記する
  - 欠損日は補完せず欠損のまま見せる

score_display_policy:
  - total score と component breakdown を必ず出す
  - week-over-week を主解釈にする
  - score 変動理由を短文で出す
  - 医療スコアのように見せない

family_care_display_policy:
  - 初期状態は非共有
  - 項目単位共有
  - 期間単位共有
  - note_share_flag を別制御
  - export_permission_flag を別制御
  - summary_only は詳細値を隠す
