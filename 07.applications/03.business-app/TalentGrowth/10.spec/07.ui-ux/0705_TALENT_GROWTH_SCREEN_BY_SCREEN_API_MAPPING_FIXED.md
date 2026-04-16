# TALENT GROWTH SCREEN BY SCREEN API MAPPING FIXED

status: draft-screen-api-mapping-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の各画面ごとに、
利用API、主操作、書込責務、参照責務を固定するための資料である。

前提:
- 画面一覧詳細
- 画面遷移設計
- full API endpoint inventory
- exact payload / exact column / DDL / RLS
を受けた対応表である。

# 1. 共通原則
- 1画面1責務を崩さない
- 画面表示APIと更新APIを分ける
- 一覧画面と個票画面でAPIを分ける
- 重い分析画面は集約APIを使う
- direct table write は行わず、API / procedure 経由に固定する
- AI補助は通常APIと分離する

# 2. global screens

## TG-GLOBAL-001 ログイン / 認証画面
read APIs:
- external auth / SSO handled outside TalentGrowth core
post-login APIs:
- GET /api/v1/me
- GET /api/v1/home

## TG-GLOBAL-002 ホーム / ナビゲーションハブ
read APIs:
- GET /api/v1/home
- GET /api/v1/notifications
main actions:
- 通知画面遷移
- role-based dashboard 遷移

## TG-GLOBAL-003 通知センター
read APIs:
- GET /api/v1/notifications
write APIs:
- POST /api/v1/notifications/read

## TG-GLOBAL-004 検索画面
read APIs:
- GET /api/v1/search

# 3. employee screens

## TG-EMP-001 employee dashboard
read APIs:
- GET /api/v1/employee/dashboard
- GET /api/v1/notifications
derived links:
- self review
- certifications
- growth plan
- recommendation center

## TG-EMP-002 my profile
read APIs:
- GET /api/v1/employees/{employee_id}
write APIs:
- PATCH /api/v1/employees/{employee_id}

## TG-EMP-003 academic history
read APIs:
- GET /api/v1/employees/{employee_id}/academics
write APIs:
- POST /api/v1/employees/{employee_id}/academics
- PATCH /api/v1/academics/{employee_academic_history_id}

## TG-EMP-004 certification management
read APIs:
- GET /api/v1/employee-certifications
- GET /api/v1/employee-certifications/expiring
- GET /api/v1/certification-masters
write APIs:
- POST /api/v1/employee-certifications
- PATCH /api/v1/employee-certifications/{employee_certification_id}
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal

## TG-EMP-005 skill inventory
read APIs:
- GET /api/v1/employee-skills
- GET /api/v1/skill-masters
write APIs:
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{employee_skill_id}
- POST /api/v1/employee-skills/{employee_skill_id}/evidences

## TG-EMP-006 career history
read APIs:
- GET /api/v1/employees/{employee_id}/career-histories
write APIs:
- POST /api/v1/employees/{employee_id}/career-histories
- PATCH /api/v1/career-histories/{employee_career_history_id}

## TG-EMP-007 achievement input
read APIs:
- GET /api/v1/employees/{employee_id}/achievements
write APIs:
- POST /api/v1/employees/{employee_id}/achievements
- PATCH /api/v1/achievements/{employee_achievement_id}

## TG-EMP-008 self review
read APIs:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write APIs:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
optional actions:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/withdraw

## TG-EMP-009 my evaluation result
read APIs:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- GET /api/v1/growth-recommendations
- GET /api/v1/growth-plans

## TG-EMP-010 gap analysis
read APIs:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- GET /api/v1/growth-recommendations
- GET /api/v1/mbo/linked-goals
main actions:
- growth plan 作成遷移
- recommendation accept / reject

## TG-EMP-011 growth plan
read APIs:
- GET /api/v1/growth-plans
- GET /api/v1/growth-plans/{growth_plan_id}
write APIs:
- POST /api/v1/growth-plans
- PATCH /api/v1/growth-plans/{growth_plan_id}
- POST /api/v1/growth-plans/{growth_plan_id}/progress

## TG-EMP-012 recommendation center
read APIs:
- GET /api/v1/growth-recommendations
write APIs:
- POST /api/v1/growth-recommendations/{growth_recommendation_id}/accept
- POST /api/v1/growth-recommendations/{growth_recommendation_id}/reject

## TG-EMP-013 mbo linked view
read APIs:
- GET /api/v1/mbo/linked-goals
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}

## TG-EMP-014 career simulation
read APIs:
- GET /api/v1/career-simulations
write APIs:
- POST /api/v1/career-simulations

# 4. manager screens

## TG-MGR-001 manager dashboard
read APIs:
- GET /api/v1/manager/dashboard
- GET /api/v1/manager/review-queue
- GET /api/v1/analytics/skill-heatmap

## TG-MGR-002 team member list
read APIs:
- GET /api/v1/employees
- GET /api/v1/employee-certifications
- GET /api/v1/growth-plans

## TG-MGR-003 employee comparison
read APIs:
- GET /api/v1/employees
- GET /api/v1/evaluation-sheets
- GET /api/v1/employee-skills
- GET /api/v1/employee-certifications
notes:
- comparison は複数 read API の集約表示でよい

## TG-MGR-004 team skill heatmap
read APIs:
- GET /api/v1/analytics/skill-heatmap

## TG-MGR-005 review input
read APIs:
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
write APIs:
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
optional AI:
- POST /api/v1/ai-assist/review-comment-draft

## TG-MGR-006 one-on-one support
read APIs:
- GET /api/v1/employees/{employee_id}
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- GET /api/v1/growth-plans
- GET /api/v1/mbo/linked-goals
write APIs:
- PATCH /api/v1/growth-plans/{growth_plan_id}
- POST /api/v1/growth-plans/{growth_plan_id}/progress

## TG-MGR-007 growth plan review
read APIs:
- GET /api/v1/growth-plans
- GET /api/v1/growth-plans/{growth_plan_id}
write APIs:
- PATCH /api/v1/growth-plans/{growth_plan_id}
- POST /api/v1/growth-plans/{growth_plan_id}/progress

## TG-MGR-008 role-fit candidate view
read APIs:
- GET /api/v1/role-fit/candidates
- GET /api/v1/promotion-candidates
main actions:
- HR共有
- growth plan 修正

# 5. HR screens

## TG-HR-001 HR dashboard
read APIs:
- GET /api/v1/hr/dashboard
- GET /api/v1/hr/review-queue
- GET /api/v1/analytics/distribution
- GET /api/v1/analytics/evaluator-bias

## TG-HR-002 cycle control
read APIs:
- GET /api/v1/evaluation-cycles
write APIs:
- POST /api/v1/evaluation-cycles
- PATCH /api/v1/evaluation-cycles/{evaluation_cycle_id}
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/open
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/publish
- POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/close

## TG-HR-003 role requirement management
read APIs:
- GET /api/v1/role-requirements
write APIs:
- POST /api/v1/role-requirements
- PATCH /api/v1/role-requirements/{role_requirement_id}
- POST /api/v1/role-requirements/{role_requirement_id}/clone
support APIs:
- GET /api/v1/role-requirements/{role_requirement_id}/diff

## TG-HR-004 template management
read APIs:
- GET /api/v1/templates/evaluations
write APIs:
- POST /api/v1/templates/evaluations

## TG-HR-005 skill dictionary management
read APIs:
- GET /api/v1/skill-masters
write APIs:
- POST /api/v1/skill-masters
- PATCH /api/v1/skill-masters/{skill_id}

## TG-HR-006 certification master management
read APIs:
- GET /api/v1/certification-masters
write APIs:
- POST /api/v1/certification-masters
- PATCH /api/v1/certification-masters/{certification_id}

## TG-HR-007 calibration board
read APIs:
- GET /api/v1/calibration-sessions/{calibration_session_id}
- GET /api/v1/evaluation-sheets
- GET /api/v1/analytics/evaluator-bias
write APIs:
- POST /api/v1/calibration-sessions
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/publish
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/reopen
optional AI:
- POST /api/v1/ai-assist/bias-check

## TG-HR-008 evaluator bias analysis
read APIs:
- GET /api/v1/analytics/evaluator-bias

## TG-HR-009 distribution analytics
read APIs:
- GET /api/v1/analytics/distribution

## TG-HR-010 9box / HR portfolio
read APIs:
- GET /api/v1/analytics/9box

## TG-HR-011 successor management
read APIs:
- GET /api/v1/successor-candidates
- GET /api/v1/role-fit/candidates
write APIs:
- POST /api/v1/successor-candidates
- PATCH /api/v1/successor-candidates/{successor_candidate_id}

## TG-HR-012 training / investment analysis
read APIs:
- GET /api/v1/analytics/training-roi

## TG-HR-013 audit log viewer
read APIs:
- POST /api/v1/audit-logs/search
write / export APIs:
- POST /api/v1/exports/evaluations
- POST /api/v1/exports/analytics
- GET /api/v1/exports/{export_job_id}
- GET /api/v1/ai-assist/references

# 6. executive screens

## TG-EXE-001 executive dashboard
read APIs:
- GET /api/v1/executive/dashboard
- GET /api/v1/analytics/org-talent-summary
- GET /api/v1/analytics/training-roi

## TG-EXE-002 org talent summary
read APIs:
- GET /api/v1/analytics/org-talent-summary
- GET /api/v1/analytics/distribution

## TG-EXE-003 successor pipeline
read APIs:
- GET /api/v1/successor-candidates
- GET /api/v1/analytics/9box

## TG-EXE-004 investment and growth view
read APIs:
- GET /api/v1/analytics/training-roi
- GET /api/v1/analytics/org-talent-summary
export APIs:
- POST /api/v1/exports/analytics
- GET /api/v1/exports/{export_job_id}

# 7. admin screens

## TG-ADM-001 user / role management
read APIs:
- GET /api/v1/admin/users
write APIs:
- PATCH /api/v1/admin/users/{employee_id}/roles

## TG-ADM-002 organization / scope control
read APIs:
- GET /api/v1/admin/users
support source:
- organization scope source handled by existing master / admin domain
notes:
- TalentGrowth側では role / scope reflection を扱う

## TG-ADM-003 localization settings
read APIs:
- GET /api/v1/admin/localization
write APIs:
- PATCH /api/v1/admin/localization

## TG-ADM-004 currency / reporting settings
read APIs:
- GET /api/v1/admin/currency-settings
write APIs:
- PATCH /api/v1/admin/currency-settings

## TG-ADM-005 integration settings
read APIs:
- GET /api/v1/admin/integrations
write APIs:
- PATCH /api/v1/admin/integrations/{integration_code}

## TG-ADM-006 AI assist settings
read APIs:
- GET /api/v1/admin/integrations
- GET /api/v1/ai-assist/references
notes:
- AI設定反映は admin integration / feature flag 管理と連携

# 8. 画面別 read / write 比率の考え方
- employee dashboard 系: read heavy
- input / review 系: read + controlled write
- analytics 系: aggregated read only
- audit 系: read + export job trigger
- settings 系: limited write

# 9. phase優先度との接続

## phase A screens
- employee dashboard
- certifications
- skills
- self review
- evaluation result
- growth plan
- manager dashboard
- review input
- HR dashboard
- cycle control
- role requirement management
- calibration board
- audit log viewer

## phase B screens
- academics
- career history
- achievements
- recommendation center
- mbo linked view
- team skill heatmap
- evaluator bias analysis
- distribution analytics

## phase C screens
- career simulation
- role-fit candidate view
- 9box
- successor management
- investment analysis
- executive analytics
- admin settings

# 10. 結論
TalentGrowth の screen-by-screen API mapping は、
画面責務と API責務を1対多で結線する形で固定する。

特に初期中核画面では、
- 1 read 集約API
- 1〜3 write API
の構成を基本とする。
