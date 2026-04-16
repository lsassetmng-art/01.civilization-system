# TALENT GROWTH SCORING FORMULA EXACT FIXED

status: draft-scoring-formula-exact-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要スコアとランクについて、
exact formula,
gate,
threshold,
normalization rule を固定するための資料である。

前提:
- score range is 0..100
- company / role requirement ごとに重みは保持できる
- formula は role_requirement の weight を参照する
- AI は score を直接確定しない
- mandatory gate を重み計算より優先する場合がある

# 1. 共通記号
- ws = overall_weight_skill
- wc = overall_weight_certification
- we = overall_weight_experience
- wp = overall_weight_performance
- wb = overall_weight_behavior
- wg = overall_weight_growth

- skill_component = 0..100
- certification_component = 0..100
- experience_component = 0..100
- performance_component = 0..100
- behavior_component = 0..100
- growth_component = 0..100

- weighted_sum = ws*skill_component + wc*certification_component + we*experience_component + wp*performance_component + wb*behavior_component + wg*growth_component
- weight_total = ws + wc + we + wp + wb + wg
- normalized_score = round2(weighted_sum / nullif(weight_total, 0))

# 2. component formula

## 2-1. skill_component
目的:
- role requirement skill 適合度

per skill formula:
- skill_match_ratio = min(actual_level / required_level, 1.0)
- if mandatory skill missing then skill_match_ratio = 0

weighted formula:
- skill_component = round2(
    100 * (
      sum(skill_match_ratio * weight_score for each required skill)
      / nullif(sum(weight_score for each required skill), 0)
    )
  )

recency penalty:
- if recency_required_months exceeded then
  adjusted_skill_match_ratio = skill_match_ratio * 0.8
- if skill_freshness_score available then final can multiply by (skill_freshness_score / 100)

## 2-2. certification_component
per certification formula:
- mandatory obtained and active = 1.0
- mandatory missing or expired = 0
- preferred obtained = 1.0
- preferred missing = 0

weighted formula:
- certification_component = round2(
    100 * (
      sum(cert_match_ratio * weight_score)
      / nullif(sum(weight_score), 0)
    )
  )

## 2-3. experience_component
definition:
- required_months from requirement
- actual_months from career history aggregation

formula:
- experience_component = round2(100 * min(actual_months / required_months, 1.0))

special rule:
- if no requirement defined, experience_component excluded from denominator via weight config

## 2-4. performance_component
definition:
- use normalized performance metrics or latest performance score input

formula:
- performance_component = round2(performance_score_input)

## 2-5. behavior_component
definition:
- competency ratings normalized to 0..100

formula:
- behavior_component = round2(
    100 * (
      sum(manager_rating_normalized * competency_weight)
      / nullif(sum(competency_weight), 0)
    )
  )

## 2-6. growth_component
definition:
- growth uses trend, learning action execution, improvement evidence

subfactors:
- score_trend_subscore
- learning_completion_subscore
- evidence_growth_subscore

formula:
- growth_component = round2(
    score_trend_subscore * 0.5
    + learning_completion_subscore * 0.3
    + evidence_growth_subscore * 0.2
  )

# 3. current_role_fit_score
formula:
- current_role_fit_score = normalized_score using current role requirement weights and current role requirement items

gate:
- if mandatory current role certification missing and company policy says hard gate
  then current_role_fit_score = min(current_role_fit_score, 59.99)

# 4. target_role_fit_score
formula:
- target_role_fit_score = normalized_score using target role requirement weights and target role requirement items

gate:
- if mandatory target role skill or certification missing
  target_role_fit_score may be capped by readiness gate

recommended cap:
- if mandatory target requirement missing then cap to 69.99

# 5. total_evaluation_score
definition:
- total evaluation mixes current role reality and future-oriented growth

recommended formula:
- total_evaluation_score = round2(
    current_role_fit_score * 0.45
    + performance_component * 0.20
    + behavior_component * 0.15
    + growth_component * 0.20
  )

notes:
- company may change weights but formula family is fixed

# 6. growth_potential_score
definition:
- potential is not current performance clone
- emphasize learning velocity and evidence-backed improvement

recommended formula:
- growth_potential_score = round2(
    growth_component * 0.45
    + behavior_component * 0.20
    + skill_component * 0.15
    + performance_component * 0.10
    + manager_potential_adjustment * 0.10
  )

manager_potential_adjustment:
- normalized 0..100 bounded input
- HR calibration may adjust

# 7. promotion_readiness_score
recommended formula:
- promotion_readiness_score = round2(
    current_role_fit_score * 0.25
    + target_role_fit_score * 0.35
    + performance_component * 0.15
    + behavior_component * 0.15
    + growth_potential_score * 0.10
  )

promotion gates:
- if mandatory target certification missing -> max 69.99
- if disciplinary / policy block exists -> policy gate outside formula
- if current cycle status not published -> not eligible for final promotion readiness publication

# 8. successor_readiness_score
recommended formula:
- successor_readiness_score = round2(
    promotion_readiness_score * 0.45
    + target_role_fit_score * 0.25
    + behavior_component * 0.15
    + growth_potential_score * 0.15
  )

additional gate:
- if critical_role_specific mandatory gap exists -> cap 74.99

# 9. rank mapping

## 9-1. current_state_rank
- S: score >= 90 and no hard gate violation
- A: 80 <= score < 90 and no hard gate violation
- B: 70 <= score < 80
- C: 60 <= score < 70
- D: score < 60

## 9-2. future_readiness_rank
- S: target or readiness score >= 90 and mandatory target gaps none
- A: 80 <= score < 90 and mandatory target gaps manageable
- B: 70 <= score < 80
- C: 60 <= score < 70
- D: score < 60

# 10. mandatory gate hierarchy
hard gate priority:
1. forbidden state or policy block
2. mandatory certification missing / expired
3. mandatory critical skill missing
4. formula score

notes:
- gate may cap score
- gate may cap rank
- gate reason must be stored separately

# 11. calibration rule
pre_calibration_score:
- formula output before HR adjustment

post_calibration_score:
- HR approved adjusted score

calibration delta rule:
- abs(post - pre) above configured threshold requires reason_text mandatory
- rank change via calibration requires meeting_note mandatory

# 12. rounding rule
- internal calculation precision: at least 4 decimals
- persisted display score precision: 2 decimals
- UI display: typically 1 or 2 decimals
- rank threshold compares against persisted 2-decimal value

# 13. missing data rule
- missing optional component with zero weight: excluded naturally
- missing mandatory evidence for required component may produce validation or gate
- missing performance input:
  - if current cycle not finalized, use available latest valid score
  - else component may be null and weight handling policy applies

# 14. example formula

example weights:
- ws=30
- wc=15
- we=10
- wp=15
- wb=10
- wg=20

example components:
- skill=82
- certification=100
- experience=75
- performance=78
- behavior=72
- growth=84

formula:
- current_role_fit_score = round2((30*82 + 15*100 + 10*75 + 15*78 + 10*72 + 20*84) / 100)
- current_role_fit_score = round2(8280 / 100)
- current_role_fit_score = 82.80

# 15. 結論
TalentGrowth の scoring formula は、
component,
weight,
gate,
threshold,
calibration
を分けて固定する。

中核原則は以下である。
- formula before calibration
- gate before rank
- current fit and future fit are different scores
- potential is not identical to performance
