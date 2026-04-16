# TALENT GROWTH DB TABLE TO ENDPOINT MAPPING FIXED

status: draft-db-endpoint-mapping-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要DBテーブルと API endpoint の対応を固定し、
実装時の責務混線を防ぐための資料である。

# 1. 原則
- endpoint は単一テーブル直結にしすぎない
- write endpoint は主更新テーブルを明示する
- read endpoint は集約元テーブルを明示する
- snapshot / analytics テーブルは read 専用寄りにする
- audit / AI log は append-first とする

# 2. table -> endpoint mapping

## tg_employee_profile
primary read endpoints:
- GET /api/v1/me
- GET /api/v1/employees
- GET /api/v1/employees/{employee_id}
- GET /api/v1/employee/dashboard
- GET /api/v1/manager/dashboard
primary write endpoints:
- PATCH /api/v1/employees/{employee_id}

## tg_employee_academic_history
read:
- GET /api/v1/employees/{employee_id}/academics
write:
- POST /api/v1/employees/{employee_id}/academics
- PATCH /api/v1/academics/{employee_academic_history_id}

## tg_employee_certification
read:
- GET /api/v1/employee-certifications
- GET /api/v1/employee-certifications/expiring
- GET /api/v1/employee/dashboard
write:
- POST /api/v1/employee-certifications
- PATCH /api/v1/employee-certifications/{employee_certification_id}
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal

## tg_employee_certification_renewal
read:
- GET /api/v1/employee-certifications
- GET /api/v1/employee-certifications/expiring
write:
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal

## tg_skill_master
read:
- GET /api/v1/skill-masters
- GET /api/v1/employee-skills
write:
- POST /api/v1/skill-masters
- PATCH /api/v1/skill-masters/{skill_id}

## tg_employee_skill
read:
- GET /api/v1/employee-skills
- GET /api/v1/employee/dashboard
- GET /api/v1/analytics/skill-heatmap
write:
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{employee_skill_id}

## tg_employee_skill_evidence
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- GET /api/v1/employee-skills
write:
- POST /api/v1/employee-skills/{employee_skill_id}/evidences
- PATCH /api/v1/employee-skills/evidences/{employee_skill_evidence_id}/verify

## tg_employee_career_history
read:
- GET /api/v1/employees/{employee_id}/career-histories
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write:
- POST /api/v1/employees/{employee_id}/career-histories
- PATCH /api/v1/career-histories/{employee_career_history_id}

## tg_employee_achievement
read:
- GET /api/v1/employees/{employee_id}/achievements
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write:
- POST /api/v1/employees/{employee_id}/achievements
- PATCH /api/v1/achievements/{employee_achievement_id}

## tg_job_family_master / tg_job_role_master / tg_grade_master
read:
- GET /api/v1/employees
- GET /api/v1/role-requirements
- GET /api/v1/analytics/*
write:
- HR master maintenance endpoints handled via requirement/master flows

## tg_certification_master
read:
- GET /api/v1/certification-masters
- GET /api/v1/employee-certifications
write:
- POST /api/v1/certification-masters
- PATCH /api/v1/certification-masters/{certification_id}

## tg_role_requirement
read:
- GET /api/v1/role-requirements
- GET /api/v1/role-requirements/{role_requirement_id}/diff
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write:
- POST /api/v1/role-requirements
- PATCH /api/v1/role-requirements/{role_requirement_id}
- POST /api/v1/role-requirements/{role_requirement_id}/clone

## tg_role_requirement_skill / tg_role_requirement_certification
read:
- GET /api/v1/role-requirements
- GET /api/v1/role-requirements/{role_requirement_id}/diff
write:
- role requirement write endpoints に内包

## tg_evaluation_cycle
read:
- GET /api/v1/evaluation-cycles
- GET /api/v1/home
- GET /api/v1/hr/dashboard
write:
- POST /api/v1/evaluation-cycles
- PATCH /api/v1/evaluation-cycles/{evaluation_cycle_id}
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/open
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/publish
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/close

## tg_evaluation_sheet
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- GET /api/v1/evaluation-sheets
- GET /api/v1/manager/review-queue
- GET /api/v1/hr/review-queue
- GET /api/v1/employee/dashboard
write:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/hr-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/publish
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/reopen
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back

## tg_evaluation_score_detail
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- analytics aggregation jobs
write:
- manager-review/save
- hr-review/save
- calibration/save
- scoring internal procedures

## tg_evaluation_comment
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write:
- self-review/save
- manager-review/save
- hr-review/save
- ai-assist/review-comment-draft reference linkage

## tg_evaluation_evidence
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write:
- self-review/save
- manager-review/save
- calibration/save
- evidence upload link flows

## tg_evaluation_snapshot
read:
- GET /api/v1/employee/dashboard
- GET /api/v1/analytics/distribution
- GET /api/v1/analytics/org-talent-summary
write:
- publish
- nightly snapshot job
- cycle close job

## tg_evaluation_change_audit
read:
- POST /api/v1/audit-logs/search
write:
- all evaluation-changing endpoints append

## tg_evaluation_approval
read:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- POST /api/v1/audit-logs/search
write:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/publish
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/reopen

## tg_calibration_session
read:
- GET /api/v1/calibration-sessions/{calibration_session_id}
write:
- POST /api/v1/calibration-sessions

## tg_calibration_log
read:
- GET /api/v1/calibration-sessions/{calibration_session_id}
- POST /api/v1/audit-logs/search
- exports
write:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save

## tg_growth_plan
read:
- GET /api/v1/growth-plans
- GET /api/v1/growth-plans/{growth_plan_id}
- GET /api/v1/employee/dashboard
write:
- POST /api/v1/growth-plans
- PATCH /api/v1/growth-plans/{growth_plan_id}
- POST /api/v1/growth-plans/{growth_plan_id}/progress

## tg_growth_action
read:
- GET /api/v1/growth-plans/{growth_plan_id}
- GET /api/v1/employee/dashboard
write:
- POST /api/v1/growth-plans
- PATCH /api/v1/growth-plans/{growth_plan_id}
- POST /api/v1/growth-plans/{growth_plan_id}/progress

## tg_growth_recommendation
read:
- GET /api/v1/growth-recommendations
- GET /api/v1/employee/dashboard
write:
- POST /api/v1/growth-recommendations/{growth_recommendation_id}/accept
- POST /api/v1/growth-recommendations/{growth_recommendation_id}/reject
- recommendation generation jobs

## tg_role_fit_snapshot
read:
- GET /api/v1/role-fit/candidates
- GET /api/v1/promotion-candidates
- GET /api/v1/successor-candidates
write:
- scoring / candidate calculation jobs

## tg_successor_candidate
read:
- GET /api/v1/successor-candidates
- GET /api/v1/executive/dashboard
write:
- POST /api/v1/successor-candidates
- PATCH /api/v1/successor-candidates/{successor_candidate_id}

## tg_training_roi_snapshot
read:
- GET /api/v1/analytics/training-roi
- GET /api/v1/executive/dashboard
write:
- investment calculation jobs

## tg_ai_assist_reference_log
read:
- GET /api/v1/ai-assist/references
- POST /api/v1/audit-logs/search
write:
- ai-assist/review-comment-draft
- ai-assist/growth-suggestion-draft
- ai-assist/bias-check

## tg_audit_export_log
read:
- GET /api/v1/exports/{export_job_id}
- POST /api/v1/audit-logs/search
write:
- POST /api/v1/exports/evaluations
- POST /api/v1/exports/analytics

# 3. 集約read APIの考え方

## dashboard APIs
主集約元:
- tg_employee_profile
- tg_evaluation_sheet
- tg_employee_certification
- tg_growth_plan
- tg_growth_recommendation
- tg_evaluation_snapshot

## analytics APIs
主集約元:
- tg_evaluation_snapshot
- tg_role_fit_snapshot
- tg_training_roi_snapshot
- skill / certification aggregate views

## audit APIs
主集約元:
- tg_evaluation_change_audit
- tg_evaluation_approval
- tg_calibration_log
- tg_ai_assist_reference_log
- tg_audit_export_log

# 4. write ownership rule

## employee-owned writes
- academics
- certifications
- employee skills
- self review draft
- growth progress
- recommendation accept/reject

## manager-owned writes
- manager review
- send back
- growth review adjustments

## HR-owned writes
- evaluation cycle
- requirements / templates
- calibration
- approve / publish / reopen
- successor maintenance
- master maintenance

## system/internal writes
- snapshots
- aggregated analytics
- ROI calculations
- AI reference logging
- export job status

# 5. 結論
TalentGrowth の DB table to endpoint mapping は、
テーブル単位の ownership と endpoint単位の責務を
1枚で辿れる形に固定する。

特に中心となる結線は以下である。
- tg_evaluation_sheet <-> review endpoints
- tg_growth_plan <-> growth endpoints
- tg_role_requirement <-> requirement endpoints
- snapshot tables <-> analytics endpoints
