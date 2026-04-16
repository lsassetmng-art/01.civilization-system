# ============================================================
# FIXED SCORING REFERENCE AND FAMILY CARE POLICY
# ============================================================

status: fixed

reference_policy:
  initial_release:
    include_reference_range: true
    include_external_population_average: false
  wording:
    - reference range
    - 参考範囲
  prohibited_wording:
    - normal guarantee
    - healthy guarantee
    - disease judgement
  comparison_standard:
    primary:
      - personal_7day_average
      - personal_30day_average
    secondary:
      - reference_range_band

health_score_policy:
  score_name:
    ja: 健康スコア
    en: Health Score
  interpretation_label:
    ja: 生活傾向スコア
    en: Lifestyle Tendency Score
  score_range:
    min: 0
    max: 100
  refresh_policy:
    fixed: daily_snapshot_weekly_emphasis
  components_and_weights:
    sleep_balance: 0.25
    activity_balance: 0.20
    weight_trend_balance: 0.20
    blood_pressure_stability: 0.20
    record_continuity: 0.15
  missing_component_policy:
    fixed: reweight_available_components
  initial_release:
    include_blood_pressure_component: true

family_care_policy:
  plan_name: Family Care
  recipient_limit:
    fixed: 5
  permission_model:
    export_permission:
      fixed: separate_flag
    note_share_flag:
      fixed_default: false
    summary_only_flag:
      fixed_default: false
    initial_non_shared:
      fixed: true
  shareable_metrics:
    - weight
    - blood_pressure
    - sleep
    - steps
    - summary_only
  summary_only_ui:
    visible:
      - latest_status_summary
      - trend_direction
      - weekly_summary_cards
      - health_score_total_optional
    hidden:
      - raw_point_list
      - detailed_note_text
      - correction_history
      - provider_detail

export_policy:
  templates:
    pdf_personal_summary:
      includes:
        - selected_metrics_summary
        - graphs
        - average_comparison
        - health_score_summary
    pdf_family_share_summary:
      includes:
        - shared_scope_only
        - summary_cards
        - graphs
      excludes:
        - detailed_private_notes
        - hidden_metrics
    csv_raw_records:
      includes:
        - selected_metrics_raw_rows
  medical_submission_template:
    fixed: not_now
