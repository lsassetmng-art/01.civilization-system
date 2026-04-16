# TALENT GROWTH REPORTING AND EXPORT FORMAT FIXED

status: draft-reporting-export-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth のレポートとエクスポート形式を固定するための資料である。

# 1. export target categories
- employee list export
- evaluation result export
- certification expiry export
- growth plan export
- calibration log export
- audit log export
- analytics export
- executive summary report

# 2. export file formats
- CSV
- XLSX
- PDF

原則:
- raw data export は CSV / XLSX
- fixed layout report は PDF
- 高度分析の再利用用は CSV / XLSX を優先する

# 3. encoding / locale rule
- CSV encoding: UTF-8
- line break: LF
- header row required
- date format: YYYY-MM-DD
- datetime format: ISO-8601 with timezone
- decimal separator: dot
- language of labels depends on requested locale
- original_text は必要に応じて別列で保持

# 4. common export metadata
全export jobで以下を保持する。

- export_job_id
- export_type_code
- requested_by_employee_id
- requested_at
- completed_at
- file_format
- locale_code
- reporting_currency
- filter_snapshot_json
- row_count
- file_id

# 5. employee list export columns
recommended columns:
- employee_code
- full_name
- organization_name
- current_job_role_label
- current_grade_label
- manager_name
- is_active
- preferred_language_code
- reporting_currency_code

# 6. evaluation result export columns
recommended columns:
- cycle_code
- employee_code
- employee_name
- current_job_role_label
- target_job_role_label
- total_evaluation_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- promotion_readiness_score
- successor_readiness_score
- current_state_rank
- future_readiness_rank
- evaluation_status_code
- published_at

# 7. certification expiry export columns
recommended columns:
- employee_code
- employee_name
- organization_name
- certification_name
- acquired_date
- expiry_date
- days_left
- certification_status_code
- renewal_required

# 8. growth plan export columns
recommended columns:
- employee_code
- employee_name
- growth_plan_title
- target_job_role_label
- plan_period_start
- plan_period_end
- growth_plan_status_code
- next_review_due_at
- action_count
- completion_percent_avg

# 9. calibration log export columns
recommended columns:
- cycle_code
- session_name
- employee_code
- employee_name
- pre_rank_code
- post_rank_code
- pre_total_score
- post_total_score
- changed_by_employee_id
- changed_at
- change_reason_text

# 10. audit log export columns
recommended columns:
- occurred_at
- actor_employee_id
- actor_role_code
- entity_type
- entity_id
- action_type
- audit_trace_id
- change_summary_text

# 11. analytics export columns
analytics exports are type-specific.

## distribution export
- organization_name
- average_total_score
- average_role_fit_score
- average_growth_potential
- employee_count

## skill heatmap export
- organization_name
- skill_code
- skill_label
- employee_count
- average_proficiency_level

## training roi export
- organization_name
- period_start
- period_end
- reporting_amount
- reporting_currency
- score_improvement_value
- roi_ratio

# 12. PDF report fixed types

## PDF-001 employee evaluation summary
内容:
- employee basic summary
- final scores
- ranks
- top strengths
- top gaps
- growth plan summary

## PDF-002 certification risk report
内容:
- expiring certifications
- risk buckets
- renewal recommendations

## PDF-003 executive talent summary
内容:
- organization comparison
- role shortage summary
- successor coverage
- investment summary

# 13. export permission stance
- employee_self:
  - own evaluation summary PDF only when allowed
- manager:
  - team summary exports
- HR:
  - raw exports and audit exports
- executive:
  - aggregate exports and summary PDFs
- admin:
  - export setting support only by default

# 14. multi-language rule
- label columns follow requested locale
- original codes may be exported together when needed
- comment original text is preserved
- translated_text is optional extra column

# 15. multi-currency rule
金額列を含む export では以下を原則表示する。

- source_amount
- source_currency
- reporting_amount
- reporting_currency
- fx_rate

集計系は reporting currency を主表示とする。

# 16. export async job rule
- export creation is async
- create endpoint returns export_job_id
- polling endpoint returns status
- completed state returns file_id or signed download reference
- failed state returns error code

# 17. 結論
TalentGrowth の reporting / export format は、
raw export と fixed-layout report を分けて固定する。

特に固定する原則は以下である。
- CSV / XLSX for analysis
- PDF for fixed presentation
- locale-aware labels
- reporting currency aware monetary output
