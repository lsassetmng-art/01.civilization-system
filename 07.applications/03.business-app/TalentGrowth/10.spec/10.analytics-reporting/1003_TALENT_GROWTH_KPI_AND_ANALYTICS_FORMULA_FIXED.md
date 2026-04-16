# TALENT GROWTH KPI AND ANALYTICS FORMULA FIXED

status: draft-kpi-analytics-formula-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要 KPI と analytics 指標について、
算出式、分母、分子、集計単位、表示前提を固定するための資料である。

前提:
- 指標は company / organization / job_family / job_role / grade / cycle 単位で集計可能とする
- 指標は raw 値と表示用 percentage を分ける
- 指標は snapshot / aggregate job で生成する
- 評価の説明責任を損なわないように、重要KPIは式が追えることを前提とする

# 1. 記号定義
- eligible_employee_count = 集計対象社員数
- active_employee_count = 有効社員数
- target_population_count = 対象母集団数
- sum_score(x) = 対象xのスコア総和
- avg_score(x) = sum_score(x) / count(x)
- pct(a,b) = (a / b) * 100
- if b = 0 then pct(a,b) = null
- round2(x) = 小数点第2位四捨五入

# 2. rank distribution

## 2-1. rank_count
definition:
- rank_count(rank_code) = 指定rank_codeを持つ対象人数

## 2-2. rank_distribution_pct
formula:
- rank_distribution_pct(rank_code) = round2(pct(rank_count(rank_code), target_population_count))

## 2-3. future_readiness_distribution_pct
formula:
- future_readiness_distribution_pct(rank_code) = round2(pct(future_readiness_rank_count(rank_code), target_population_count))

# 3. score average

## 3-1. average_total_evaluation_score
formula:
- average_total_evaluation_score = round2(avg_score(total_evaluation_score))

## 3-2. average_current_role_fit_score
formula:
- average_current_role_fit_score = round2(avg_score(current_role_fit_score))

## 3-3. average_target_role_fit_score
formula:
- average_target_role_fit_score = round2(avg_score(target_role_fit_score))

## 3-4. average_growth_potential_score
formula:
- average_growth_potential_score = round2(avg_score(growth_potential_score))

## 3-5. average_promotion_readiness_score
formula:
- average_promotion_readiness_score = round2(avg_score(promotion_readiness_score))

## 3-6. average_successor_readiness_score
formula:
- average_successor_readiness_score = round2(avg_score(successor_readiness_score))

# 4. skill analytics

## 4-1. skill_coverage_rate
目的:
- あるスキル要件を満たしている割合

formula:
- skill_qualified_count = required_level を満たす人数
- skill_coverage_rate = round2(pct(skill_qualified_count, target_population_count))

## 4-2. skill_gap_rate
formula:
- skill_gap_count = required_level 未達人数
- skill_gap_rate = round2(pct(skill_gap_count, target_population_count))

## 4-3. average_skill_proficiency
formula:
- average_skill_proficiency(skill_id) = round2(avg_score(proficiency_level))

## 4-4. skill_freshness_average
formula:
- skill_freshness_average(skill_id) = round2(avg_score(skill_freshness_score))

## 4-5. critical_skill_shortage_rate
definition:
- critical_skill_shortage_rate = critical skill 群に対する不足率平均

formula:
- critical_skill_shortage_rate = round2(avg(skill_gap_rate for critical skills))

# 5. certification analytics

## 5-1. certification_holding_rate
formula:
- certification_holding_rate(certification_id) = round2(pct(holder_count, target_population_count))

## 5-2. certification_expiring_soon_rate
definition:
- expiring_soon threshold = company policy days, default 90

formula:
- certification_expiring_soon_rate = round2(pct(expiring_soon_count, holder_count))

## 5-3. mandatory_certification_compliance_rate
formula:
- mandatory_certification_compliance_rate = round2(pct(mandatory_cert_compliant_count, target_population_count))

## 5-4. certification_expired_rate
formula:
- certification_expired_rate = round2(pct(expired_count, holder_count))

# 6. growth analytics

## 6-1. growth_plan_coverage_rate
formula:
- growth_plan_coverage_rate = round2(pct(employee_with_active_growth_plan_count, target_population_count))

## 6-2. growth_plan_completion_rate
definition:
- completed_action_count = status COMPLETED の action 数
- all_action_count = 全action数

formula:
- growth_plan_completion_rate = round2(pct(completed_action_count, all_action_count))

## 6-3. on_time_growth_action_rate
formula:
- on_time_growth_action_rate = round2(pct(on_time_completed_action_count, completed_action_count))

## 6-4. recommendation_acceptance_rate
formula:
- recommendation_acceptance_rate = round2(pct(accepted_recommendation_count, total_recommendation_count))

## 6-5. average_growth_velocity
definition:
- cycle_delta_score = 現サイクル total score - 前サイクル total score

formula:
- average_growth_velocity = round2(avg(cycle_delta_score))

# 7. evaluator bias analytics

## 7-1. evaluator_average_given_score
formula:
- evaluator_average_given_score(evaluator) = round2(avg(final_score by evaluator))

## 7-2. evaluator_bias_delta
formula:
- evaluator_bias_delta(evaluator) = round2(evaluator_average_given_score - org_average_given_score_same_scope)

## 7-3. evaluator_extreme_rate
definition:
- extreme = S または D, あるいは policy-defined outlier score

formula:
- evaluator_extreme_rate = round2(pct(extreme_count_by_evaluator, reviewed_count_by_evaluator))

## 7-4. evaluator_bias_index
目的:
- 単一値で偏り強度を出す

formula:
- evaluator_bias_index = round2(
    abs(evaluator_bias_delta) * 0.5
    + abs(extreme_rate_delta) * 0.3
    + abs(calibration_adjustment_rate_delta) * 0.2
  )

notes:
- delta 系は scope normalized value を使う

# 8. calibration analytics

## 8-1. calibration_adjustment_rate
formula:
- calibration_adjustment_rate = round2(pct(adjusted_sheet_count, calibrated_sheet_count))

## 8-2. average_calibration_delta_score
formula:
- average_calibration_delta_score = round2(avg(abs(post_total_score - pre_total_score)))

## 8-3. rank_change_rate_after_calibration
formula:
- rank_change_rate_after_calibration = round2(pct(rank_changed_count, calibrated_sheet_count))

# 9. role-fit / promotion / successor analytics

## 9-1. role_fit_ready_rate
definition:
- ready threshold default = target_role_fit_score >= 80 and mandatory gap none

formula:
- role_fit_ready_rate = round2(pct(role_fit_ready_count, target_population_count))

## 9-2. promotion_ready_rate
formula:
- promotion_ready_rate = round2(pct(promotion_ready_count, target_population_count))

## 9-3. successor_coverage_rate
definition:
- covered_critical_role_count = successor candidate 1名以上の critical role 数

formula:
- successor_coverage_rate = round2(pct(covered_critical_role_count, critical_role_count))

## 9-4. ready_now_successor_rate
formula:
- ready_now_successor_rate = round2(pct(ready_now_successor_count, successor_candidate_count))

# 10. investment / ROI analytics

## 10-1. training_investment_total
formula:
- training_investment_total = sum(reporting_amount for training-related cost in period)

## 10-2. certification_investment_total
formula:
- certification_investment_total = sum(reporting_amount for certification-related cost in period)

## 10-3. score_improvement_value
definition:
- score_improvement_value = Σ(current_cycle_score - previous_cycle_score) for investment-linked population

## 10-4. training_roi_ratio
formula:
- training_roi_ratio = round2(score_improvement_value / nullif(training_investment_total, 0))

## 10-5. certification_roi_ratio
formula:
- certification_roi_ratio = round2(score_improvement_value / nullif(certification_investment_total, 0))

notes:
- ROI は monetary return ではなく talent improvement ratio として扱う
- 金額換算利益ROIと混同しない

# 11. dashboard KPI fixed set

## employee dashboard KPIs
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- current_state_rank
- expiring_certification_count
- top_growth_action_count
- score_trend_delta

## manager dashboard KPIs
- pending_review_count
- sent_back_count
- expiring_certification_count
- high_growth_candidate_count
- team_average_current_role_fit_score
- critical_skill_shortage_rate

## HR dashboard KPIs
- active_cycle_count
- pending_hr_review_count
- pending_calibration_count
- certification_expiring_soon_rate
- average_current_role_fit_score
- evaluator_bias_alert_count
- successor_coverage_rate

## executive dashboard KPIs
- critical_role_coverage_rate
- ready_now_successor_rate
- org_average_growth_potential_score
- training_investment_total
- training_roi_ratio
- high_risk_population_rate

# 12. analytics display rules
- percentage は 0..100 で表示
- average score は 0..100 前提
- count と rate を混在させるときは単位表示必須
- analytics cache は generated_at を表示する
- compare view では same denominator を守る
- null denominator は N/A として表示する

# 13. 結論
TalentGrowth の KPI / analytics formula は、
分子・分母・閾値・集計単位を明示して固定する。

特に重要なのは以下である。
- rank distribution
- skill coverage
- certification compliance
- growth velocity
- evaluator bias index
- successor coverage
- training ROI ratio
