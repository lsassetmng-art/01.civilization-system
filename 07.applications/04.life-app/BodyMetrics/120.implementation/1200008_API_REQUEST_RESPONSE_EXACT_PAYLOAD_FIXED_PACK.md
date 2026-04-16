# ============================================================
# API REQUEST RESPONSE EXACT PAYLOAD FIXED PACK
# ============================================================

status: fixed

apis:

  - name: quick_record_metric
    method: POST
    path: /life/bodymetrics/records/metric
    request:
      user_id: uuid
      metric_type: weight | heart_rate | blood_oxygen | body_temperature | body_fat_percentage
      measured_value: number
      unit_code: string
      measured_at: iso8601
      timezone_code: string
      source_type: manual | apple_health | health_connect | smartwatch_vendor
      source_device_id: string | null
      note_text: string | null
    response:
      biometric_record_id: uuid
      local_date: yyyy-mm-dd
      saved: true
      latest_value:
        metric_type: string
        measured_value: number
        unit_code: string
        measured_at: iso8601
      comparison_summary:
        personal_7day_average: number | null
        personal_30day_average: number | null
        gap_value: number | null
        gap_rate: number | null
      message:
        ja: 記録しました
        en: Saved

  - name: save_blood_pressure
    method: POST
    path: /life/bodymetrics/records/blood-pressure
    request:
      user_id: uuid
      systolic_value: number
      diastolic_value: number
      pulse_value: number | null
      unit_code: mmHg
      measured_at: iso8601
      timezone_code: string
      posture_code: sitting | standing | supine | null
      timing_code: morning | night | other | null
      source_type: manual | apple_health | health_connect | smartwatch_vendor
      source_device_id: string | null
      note_text: string | null
    response:
      blood_pressure_record_id: uuid
      saved: true
      latest_value:
        systolic_value: number
        diastolic_value: number
        pulse_value: number | null
        measured_at: iso8601
      reference_summary:
        reference_label: reference_range
        systolic_reference_max: number | null
        diastolic_reference_max: number | null
      message:
        ja: 血圧を記録しました

  - name: save_sleep_record
    method: POST
    path: /life/bodymetrics/records/sleep
    request:
      user_id: uuid
      sleep_start_at: iso8601
      sleep_end_at: iso8601
      duration_minutes: integer
      sleep_score: number | null
      source_type: manual | apple_health | health_connect | smartwatch_vendor
      source_device_id: string | null
      note_text: string | null
    response:
      sleep_record_id: uuid
      saved: true
      local_date_anchor: yyyy-mm-dd
      comparison_summary:
        personal_7day_average: number | null
        personal_30day_average: number | null
      message:
        ja: 睡眠を記録しました

  - name: save_activity_record
    method: POST
    path: /life/bodymetrics/records/activity
    request:
      user_id: uuid
      activity_type: steps | distance | active_minutes
      measured_value: number
      unit_code: string
      measured_at: iso8601 | null
      local_date: yyyy-mm-dd
      aggregation_type: daily_total | session
      source_type: manual | apple_health | health_connect | smartwatch_vendor
      source_device_id: string | null
    response:
      activity_record_id: uuid
      saved: true
      comparison_summary:
        personal_7day_average: number | null
        personal_30day_average: number | null

  - name: get_dashboard
    method: GET
    path: /life/bodymetrics/dashboard
    query:
      user_id: uuid
      date: yyyy-mm-dd
    response:
      user_id: uuid
      date: yyyy-mm-dd
      latest_cards:
        weight:
          value: number | null
          unit_code: string | null
          measured_at: iso8601 | null
        blood_pressure:
          systolic_value: number | null
          diastolic_value: number | null
          measured_at: iso8601 | null
        sleep:
          duration_minutes: integer | null
          local_date_anchor: yyyy-mm-dd | null
        steps:
          measured_value: number | null
          local_date: yyyy-mm-dd | null
      health_score:
        total_score: number | null
        trend_direction: up | flat | down | null
        summary_text: string | null
      average_comparison_highlights:
        - metric_type: string
          current_value: number
          personal_7day_average: number | null
          gap_value: number | null
          gap_rate: number | null
      sync_status:
        has_error: boolean
        last_sync_at: iso8601 | null

  - name: get_metric_trend
    method: GET
    path: /life/bodymetrics/trends/{metric_type}
    query:
      user_id: uuid
      range_type: daily | weekly | monthly
      date_from: yyyy-mm-dd
      date_to: yyyy-mm-dd
    response:
      metric_type: string
      unit_code: string
      points:
        - date: yyyy-mm-dd
          value: number | null
          source_type: string | null
      overlays:
        personal_7day_average:
          - date: yyyy-mm-dd
            value: number | null
        personal_30day_average:
          - date: yyyy-mm-dd
            value: number | null
      reference_band:
        min: number | null
        max: number | null
        label: reference_range | null

  - name: get_health_score
    method: GET
    path: /life/bodymetrics/health-score
    query:
      user_id: uuid
      date: yyyy-mm-dd
    response:
      score_date: yyyy-mm-dd
      total_score: number
      score_version: string
      summary_text: string | null
      components:
        - component_code: sleep_balance
          component_score: number
          component_weight: number
          explanation_text: string | null
        - component_code: activity_balance
          component_score: number
          component_weight: number
          explanation_text: string | null
        - component_code: weight_trend_balance
          component_score: number
          component_weight: number
          explanation_text: string | null
        - component_code: blood_pressure_stability
          component_score: number
          component_weight: number
          explanation_text: string | null
        - component_code: record_continuity
          component_score: number
          component_weight: number
          explanation_text: string | null
      warning:
        medical_diagnosis: false

  - name: get_weekly_review
    method: GET
    path: /life/bodymetrics/reviews/weekly
    query:
      user_id: uuid
      week_start: yyyy-mm-dd
    response:
      week_start: yyyy-mm-dd
      week_end: yyyy-mm-dd
      metrics_summary:
        - metric_type: weight
          latest_value: number | null
          weekly_average: number | null
          trend_direction: up | flat | down | null
        - metric_type: sleep_duration
          latest_value: number | null
          weekly_average: number | null
          trend_direction: up | flat | down | null
        - metric_type: steps
          latest_value: number | null
          weekly_average: number | null
          trend_direction: up | flat | down | null
      health_score:
        total_score: number | null
        previous_week_score: number | null
        delta: number | null
      notes:
        - noted_at: iso8601
          note_text: string

  - name: upsert_health_goal
    method: POST
    path: /life/bodymetrics/goals
    request:
      user_id: uuid
      goal_type: target_weight | step_target | sleep_target | blood_pressure_range
      target_value: number | null
      target_range_min: number | null
      target_range_max: number | null
      unit_code: string | null
      start_date: yyyy-mm-dd
      end_date: yyyy-mm-dd | null
      description_text: string | null
    response:
      health_goal_id: uuid
      saved: true

  - name: connect_provider
    method: POST
    path: /life/bodymetrics/providers/connect
    request:
      user_id: uuid
      provider_type: apple_health | health_connect | fitbit | garmin | samsung
      provider_account_ref: string
      permission_scope:
        metrics:
          - weight
          - sleep
          - steps
          - blood_pressure
    response:
      device_link_id: uuid
      link_status: connected | pending | failed
      sync_enabled_flag: boolean

  - name: get_share_settings
    method: GET
    path: /life/bodymetrics/family-care/share-settings
    query:
      owner_user_id: uuid
    response:
      shares:
        - data_share_setting_id: uuid
          recipient_user_id: uuid
          share_status: active | ended
          shared_metric_scope:
            metrics:
              - weight
              - blood_pressure
            summary_only: boolean
          note_share_flag: boolean
          export_permission_flag: boolean
          start_at: iso8601
          end_at: iso8601 | null

  - name: create_or_update_share_setting
    method: POST
    path: /life/bodymetrics/family-care/share-settings
    request:
      owner_user_id: uuid
      recipient_user_id: uuid
      shared_metric_scope:
        metrics:
          - weight
          - blood_pressure
          - sleep
          - steps
        summary_only: boolean
      note_share_flag: boolean
      export_permission_flag: boolean
      relationship_type: parent | child | spouse | family | other | null
      start_at: iso8601
      end_at: iso8601 | null
    response:
      data_share_setting_id: uuid
      share_status: active
      saved: true

  - name: create_export_job
    method: POST
    path: /life/bodymetrics/exports
    request:
      user_id: uuid
      format_type: pdf | csv
      export_scope:
        metrics:
          - weight
          - blood_pressure
          - sleep
          - steps
        include_notes: boolean
      date_range_start: yyyy-mm-dd
      date_range_end: yyyy-mm-dd
    response:
      export_job_id: uuid
      job_status: queued
      accepted: true

error_shapes:
  validation_error:
    code: validation_error
    message: string
    field_errors:
      - field: string
        reason: string

  permission_denied:
    code: permission_denied
    message: string

  scope_denied:
    code: scope_denied
    message: string

  provider_link_failed:
    code: provider_link_failed
    message: string
    provider_type: string

  export_rejected:
    code: export_rejected
    message: string

fixed_notes:
  - API は実装前提の exact payload 固定用である
  - medical diagnosis に見える返却はしない
  - Family Care は effective scope を返却の上限とする
