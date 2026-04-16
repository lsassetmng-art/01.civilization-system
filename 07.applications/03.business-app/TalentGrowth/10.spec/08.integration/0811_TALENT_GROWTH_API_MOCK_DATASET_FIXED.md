# TALENT GROWTH API MOCK DATASET FIXED

status: draft-api-mock-dataset-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面 / API / 結合試験で使う
固定 mock dataset を定義するための資料である。

前提:
- demo company 1社で固定する
- phase A / B の代表フローを再現できる
- employee / manager / HR / executive / admin を含む
- send back, approval, cert expiry, growth plan, notification を含む

# 1. tenant and actor set

company:
- company_id: comp_demo_01
- company_name: Demo Retail Co.

employees:
- emp_demo_01
  role: employee_self
  name: 山田 太郎
  org: 東北営業部
  current_role: 店舗担当
  current_grade: G2
  manager: emp_demo_mgr_01

- emp_demo_mgr_01
  role: manager
  name: 佐藤 花子
  org: 東北営業部
  current_role: 店長
  current_grade: G3

- emp_demo_hr_01
  role: HR
  name: 鈴木 健
  org: 人事部

- emp_demo_exe_01
  role: executive
  name: 高橋 誠
  org: 経営企画室

- emp_demo_admin_01
  role: admin
  name: 管理 太一
  org: 情報システム部

# 2. master mock set

job families:
- jfam_store: 店舗職群

job roles:
- jrole_store_staff: 店舗担当
- jrole_store_manager: 店長

grades:
- grade_g2: 一般
- grade_g3: 主任級

skills:
- skill_customer_response
- skill_numeric_management
- skill_people_development
- skill_store_operation

certifications:
- cert_hygiene_manager
- cert_safety_supervisor

# 3. employee profile mock

employee profile baseline:
- emp_demo_01
  employee_code: E0001
  current_job_role_id: jrole_store_staff
  current_grade_id: grade_g2
  preferred_language_code: ja
  reporting_currency_code: JPY

- emp_demo_mgr_01
  employee_code: M0001
  current_job_role_id: jrole_store_manager
  current_grade_id: grade_g3

# 4. certification mock

## active and expiring set
- ecert_demo_01
  employee_id: emp_demo_01
  certification_id: cert_hygiene_manager
  certification_status_code: EXPIRING_SOON
  acquired_date: 2023-05-01
  expiry_date: 2026-05-15
  renewal_required: true

- ecert_demo_02
  employee_id: emp_demo_mgr_01
  certification_id: cert_safety_supervisor
  certification_status_code: ACTIVE
  acquired_date: 2025-01-10
  expiry_date: 2028-01-09
  renewal_required: true

# 5. skill mock

employee skills:
- eskill_demo_01
  employee_id: emp_demo_01
  skill_id: skill_customer_response
  proficiency_level: 4
  self_rating: 82
  manager_rating: 80

- eskill_demo_02
  employee_id: emp_demo_01
  skill_id: skill_store_operation
  proficiency_level: 4
  self_rating: 79
  manager_rating: 78

- eskill_demo_03
  employee_id: emp_demo_01
  skill_id: skill_numeric_management
  proficiency_level: 2
  self_rating: 55
  manager_rating: 58

- eskill_demo_04
  employee_id: emp_demo_01
  skill_id: skill_people_development
  proficiency_level: 2
  self_rating: 50
  manager_rating: 52

# 6. role requirement mock

role requirement for store manager:
- role_requirement_id: rr_demo_store_manager_2026h1
- job_role_id: jrole_store_manager
- grade_id: grade_g3
- requirement_version: 2026-H1
- overall_weight_skill: 30
- overall_weight_certification: 15
- overall_weight_experience: 10
- overall_weight_performance: 15
- overall_weight_behavior: 10
- overall_weight_growth: 20

required skills:
- skill_store_operation required_level 4 mandatory
- skill_numeric_management required_level 4 mandatory
- skill_people_development required_level 3 mandatory

required certification:
- cert_hygiene_manager mandatory

# 7. evaluation mock

evaluation cycle:
- ecycle_demo_2026h1
  cycle_code: 2026-H1
  cycle_name: 2026年上期評価
  cycle_status_code: OPEN

evaluation sheet:
- esheet_demo_01
  employee_id: emp_demo_01
  manager_employee_id: emp_demo_mgr_01
  hr_owner_employee_id: emp_demo_hr_01
  current_job_role_id: jrole_store_staff
  target_job_role_id: jrole_store_manager
  evaluation_status_code: SELF_REVIEW_SUBMITTED
  current_state_rank: B
  future_readiness_rank: B
  total_evaluation_score: 75.50
  current_role_fit_score: 79.00
  target_role_fit_score: 68.00
  growth_potential_score: 81.00
  promotion_readiness_score: 64.00
  successor_readiness_score: 61.00

# 8. self review mock

self review summary:
- self_review_comment:
  現職では店舗運営の再現性は高いが、数値管理と後輩育成に課題がある。

skill self comments:
- customer_response:
  クレーム初動対応は単独で実施可能
- numeric_management:
  日次管理は実施できるが月次分析は弱い
- people_development:
  OJTの体系化経験が不足

# 9. manager review mock

manager review draft:
- manager_review_comment:
  運営安定性は高い。次期は数値管理と育成観点を重点強化したい。
- behavior_score: 72
- performance_score: 79
- current_role_fit_score: 80
- target_role_fit_score: 68
- growth_potential_score: 83

# 10. calibration mock

calibration session:
- calsess_demo_01
  session_name: 2026年上期 校正会議A
  session_status_code: OPEN

calibration log example:
- pre_rank_code: B
- post_rank_code: B
- pre_total_score: 75.50
- post_total_score: 76.50
- change_reason_text: 部門間評価基準差の是正

# 11. growth plan mock

growth plan:
- gplan_demo_01
  employee_id: emp_demo_01
  plan_title: 2026年上期 成長計画
  target_job_role_id: jrole_store_manager
  growth_plan_status_code: ACTIVE
  next_review_due_at: 2026-06-30

growth actions:
- gact_demo_01
  action_type_code: TRAINING
  action_title: 数値管理基礎研修
  priority_code: HIGH
  completion_percent: 50

- gact_demo_02
  action_type_code: OJT
  action_title: 新人育成OJT担当
  priority_code: MEDIUM
  completion_percent: 0

recommendations:
- grec_demo_01
  recommendation_type_code: TRAINING
  recommendation_title: 数値管理基礎研修
  accepted_flag: true

# 12. notification mock

notifications:
- notif_demo_01
  notification_type_code: REVIEW_REQUEST
  target_employee_id: emp_demo_mgr_01
  deep_link_type: EVALUATION_SHEET
  deep_link_target_id: esheet_demo_01

- notif_demo_02
  notification_type_code: CERT_EXPIRY_ALERT
  target_employee_id: emp_demo_01
  deep_link_type: EMPLOYEE_CERTIFICATION
  deep_link_target_id: ecert_demo_01

# 13. audit mock

audit entries:
- approve action sample
- send back action sample
- calibration save sample
- ai reference sample

audit_trace sample:
- atrace_demo_01

# 14. usage
この dataset は以下に使う。
- API mock response
- frontend mock screens
- integration test
- regression minimum set
- demo data seed

# 15. conclusion
TalentGrowth の API mock dataset は、
phase A/B の代表フローを再現できる最小固定セットとして扱う。
