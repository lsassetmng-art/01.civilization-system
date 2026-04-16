# TALENT GROWTH API ENTITY ID AND KEY POLICY

status: draft-id-key-policy
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の API とデータモデルで使う
entity id / code / key の扱いを固定するための資料である。

# 1. 基本原則
- 表示名と内部keyを分離する
- code は意味参照用
- id は一意識別用
- 多言語ラベル変更で code を変えない
- 外部連携先のキーは別保持する

# 2. 推奨ID命名
- company_id
- organization_id
- employee_id
- job_family_id
- job_role_id
- grade_id
- skill_id
- certification_id
- evaluation_cycle_id
- evaluation_sheet_id
- evaluation_score_id
- growth_plan_id
- growth_action_id
- calibration_session_id
- audit_log_id
- ai_draft_id

# 3. 推奨code命名
- job_family_code
- job_role_code
- grade_code
- skill_code
- certification_code
- competency_code
- action_type_code
- status_code
- rank_code

# 4. 外部連携key
- external_employee_key
- external_organization_key
- external_goal_key
- external_training_key
- external_payroll_reference_key

# 5. rank / state / action type codes
## rank_code
- S
- A
- B
- C
- D

## evaluation_status_code
- SELF_REVIEW_DRAFT
- SELF_REVIEW_SUBMITTED
- MANAGER_REVIEW_DRAFT
- MANAGER_REVIEW_SUBMITTED
- HR_REVIEW_IN_PROGRESS
- CALIBRATION_IN_PROGRESS
- APPROVED
- PUBLISHED
- SENT_BACK
- REOPENED
- ARCHIVED

## growth_action_type_code
- TRAINING
- CERTIFICATION
- OJT
- ASSIGNMENT
- MENTORING
- SELF_STUDY

# 6. audit keys
- request_id
- audit_trace_id
- actor_employee_id
- entity_type
- entity_id
- action_type

# 7. monetary keys
- source_amount
- source_currency
- reporting_amount
- reporting_currency
- fx_rate
- fx_rate_applied_at

# 8. multilingual keys
- label_ja
- label_en
- label_zh
- label_ko
- original_text
- translated_text

# 9. 結論
TalentGrowth の key policy は、
- id = uniqueness
- code = semantic reference
- label = display
で固定する。

また、
外部連携keyは別保持し、
社内正本keyと混同しない。
