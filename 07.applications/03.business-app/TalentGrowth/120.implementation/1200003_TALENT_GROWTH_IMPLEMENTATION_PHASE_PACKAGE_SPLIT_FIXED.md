# TALENT GROWTH IMPLEMENTATION PHASE PACKAGE SPLIT FIXED

status: draft-package-split-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の実装時に、
どの画面 / API / テーブル / ロジックを
どの phase package で束ねるかを固定するための資料である。

# 1. split 原則
- phaseごとに user value が成立する束で切る
- 画面だけ先行、APIだけ先行にしない
- screen + endpoint + table + policy を最小束でそろえる
- 校正 / 監査は後回しにしない
- AI補助は最後段に寄せる

# 2. phase A core package
package_name:
- tg-core-evaluation-foundation

screens:
- employee dashboard
- certification management
- skill inventory
- self review
- my evaluation result
- gap analysis
- growth plan
- manager dashboard
- team member list
- review input
- one-on-one support
- growth plan review
- HR dashboard
- cycle control
- role requirement management
- calibration board
- audit log viewer

endpoints:
- /me
- /home
- /notifications
- /employee/dashboard
- /employee-certifications
- /employee-skills
- /evaluation-cycles
- /evaluation-sheets/{id}
- /self-review/save
- /self-review/submit
- /manager/review-queue
- /manager-review/save
- /manager-review/submit
- /send-back
- /role-requirements
- /growth-plans
- /growth-plans/{id}/progress
- /audit-logs/search

tables:
- tg_employee_profile
- tg_employee_certification
- tg_employee_certification_renewal
- tg_skill_master
- tg_employee_skill
- tg_employee_skill_evidence
- tg_role_requirement
- tg_role_requirement_skill
- tg_role_requirement_certification
- tg_evaluation_cycle
- tg_evaluation_sheet
- tg_evaluation_score_detail
- tg_evaluation_comment
- tg_evaluation_evidence
- tg_evaluation_change_audit
- tg_evaluation_approval
- tg_calibration_session
- tg_calibration_log
- tg_growth_plan
- tg_growth_action
- tg_growth_recommendation

policy:
- exact payload fixed
- approval state machine fixed
- RLS fixed
- audit append mandatory

# 3. phase B profile / evidence / analytics-basic package
package_name:
- tg-profile-and-analytics-basic

screens:
- my profile
- academic history
- career history
- achievement input
- recommendation center
- mbo linked view
- employee comparison
- team skill heatmap
- skill dictionary management
- certification master management
- evaluator bias analysis
- distribution analytics

endpoints:
- academics endpoints
- career-histories endpoints
- achievements endpoints
- certification-masters endpoints
- skill-masters endpoints
- hr/review-queue
- calibration-sessions
- calibration/save
- approve
- publish
- analytics/distribution
- analytics/skill-heatmap
- analytics/evaluator-bias
- mbo/linked-goals

tables:
- tg_employee_academic_history
- tg_employee_career_history
- tg_employee_achievement
- tg_job_family_master
- tg_job_role_master
- tg_grade_master
- tg_certification_master
- tg_evaluation_snapshot

# 4. phase C talent-strategy package
package_name:
- tg-talent-strategy-and-investment

screens:
- role-fit candidate view
- career simulation
- 9box / HR portfolio
- successor management
- training / investment analysis
- executive dashboard
- org talent summary
- successor pipeline
- investment and growth view
- admin settings core

endpoints:
- role-fit/candidates
- promotion-candidates
- successor-candidates
- career-simulations
- analytics/9box
- analytics/training-roi
- analytics/org-talent-summary
- exports/evaluations
- exports/analytics
- exports/{export_job_id}
- admin/users
- admin/localization
- admin/currency-settings
- admin/integrations

tables:
- tg_role_fit_snapshot
- tg_successor_candidate
- tg_training_roi_snapshot
- export job backing tables / logs
- admin setting backing tables where needed

# 5. phase D AI and advanced governance package
package_name:
- tg-ai-assist-and-advanced-governance

screens:
- AI assist settings
- advanced export controls
- advanced bias assist surfaces

endpoints:
- ai-assist/review-comment-draft
- ai-assist/growth-suggestion-draft
- ai-assist/bias-check
- ai-assist/references
- reopen
- advanced export variants

tables:
- tg_ai_assist_reference_log
- ai draft backing tables if introduced
- advanced audit / export support tables

# 6. implementation layer split suggestion

## frontend layer
- employee module
- manager module
- HR module
- executive module
- admin module

## api layer
- dashboard controller
- employee profile controller
- certification controller
- skill controller
- evaluation controller
- growth controller
- analytics controller
- audit controller
- admin controller
- ai assist controller

## domain/service layer
- employee service
- certification service
- skill service
- requirement service
- evaluation engine service
- approval / calibration service
- growth planning service
- candidate extraction service
- analytics service
- export service
- ai assist orchestrator

## persistence layer
- profile repository
- certification repository
- skill repository
- evaluation repository
- growth repository
- analytics snapshot repository
- audit repository
- admin settings repository

# 7. deployability rule
- each phase package must be deployable without unfinished hidden dependency on later phase
- later phase may depend on earlier phase, not reverse
- phase A alone must already support end-to-end evaluation basic flow

# 8. testing split

## phase A tests
- self review flow
- manager review flow
- send back flow
- approve flow
- growth plan basic flow
- audit append flow

## phase B tests
- academics / career / achievements CRUD
- skill evidence verification
- distribution analytics consistency
- evaluator bias aggregation consistency

## phase C tests
- role-fit candidate calculation
- successor candidate visibility
- training ROI calculation
- export permission and format

## phase D tests
- AI assist logging
- AI assist permission boundary
- reopen governance
- advanced export governance

# 9. 結論
TalentGrowth の implementation package split は、
phase A で評価を成立させ、
phase B で証拠と分析を厚くし、
phase C で戦略人材機能を広げ、
phase D でAI補助と高度統制を加える構成で固定する。
