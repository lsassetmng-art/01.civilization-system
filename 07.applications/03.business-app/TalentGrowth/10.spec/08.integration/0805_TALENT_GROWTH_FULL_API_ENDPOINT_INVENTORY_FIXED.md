# TALENT GROWTH FULL API ENDPOINT INVENTORY FIXED

status: draft-full-endpoint-inventory
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の API を endpoint 単位で棚卸しし、
実装漏れなく固定するための inventory 資料である。

前提:
- REST JSON API 前提
- version prefix は /api/v1
- 権限は employee_self / manager / HR_operator / executive_viewer / system_admin / service_role_internal を前提とする
- 共通部品APIは扱わず、TalentGrowth 本体責務のみを扱う

# 1. endpoint group 一覧
- global / auth
- employee profile
- academics
- certifications
- skills
- career / achievements
- evaluation cycle
- self review
- manager review
- HR review / calibration / approval
- growth plan / recommendations
- role-fit / promotion / successor
- analytics / dashboards
- audit / export
- settings / administration
- AI assist

# 2. global / auth

## GET /api/v1/me
permission:
- authenticated user
purpose:
- 自分の基本権限、所属、利用可能メニューを返す

## GET /api/v1/home
permission:
- authenticated user
purpose:
- role-based home 集約データ

## GET /api/v1/notifications
permission:
- authenticated user
purpose:
- 通知一覧取得

## POST /api/v1/notifications/read
permission:
- authenticated user
purpose:
- 通知既読更新

## GET /api/v1/search
permission:
- authenticated user
purpose:
- 横断検索
notes:
- exact parameter policy は別資料準拠

# 3. employee profile

## GET /api/v1/employees
permission:
- manager / HR / executive(scope limited) / admin(limited)
purpose:
- 社員一覧取得

## GET /api/v1/employees/{employee_id}
permission:
- employee_self(self only) / manager(team only) / HR
purpose:
- 社員詳細取得

## PATCH /api/v1/employees/{employee_id}
permission:
- employee_self(partial self fields only) / HR
purpose:
- 社員基本情報更新

## GET /api/v1/employee/dashboard
permission:
- employee_self
purpose:
- 本人ダッシュボード集約

## GET /api/v1/manager/dashboard
permission:
- manager
purpose:
- 上長ダッシュボード集約

## GET /api/v1/hr/dashboard
permission:
- HR
purpose:
- 人事ダッシュボード集約

## GET /api/v1/executive/dashboard
permission:
- executive_viewer
purpose:
- 経営ダッシュボード集約

# 4. academics

## GET /api/v1/employees/{employee_id}/academics
permission:
- employee_self / manager(team) / HR
purpose:
- 学歴一覧取得

## POST /api/v1/employees/{employee_id}/academics
permission:
- employee_self / HR
purpose:
- 学歴追加

## PATCH /api/v1/academics/{employee_academic_history_id}
permission:
- employee_self(own draft only) / HR
purpose:
- 学歴更新

## DELETE /api/v1/academics/{employee_academic_history_id}
permission:
- HR
purpose:
- 学歴削除または無効化

# 5. certifications

## GET /api/v1/employee-certifications
permission:
- employee_self / manager(team) / HR
purpose:
- 資格一覧取得

## POST /api/v1/employee-certifications
permission:
- employee_self / HR
purpose:
- 資格追加

## PATCH /api/v1/employee-certifications/{employee_certification_id}
permission:
- employee_self(own draft scope) / HR
purpose:
- 資格更新

## POST /api/v1/employee-certifications/{employee_certification_id}/renewal
permission:
- employee_self / HR
purpose:
- 更新記録

## GET /api/v1/employee-certifications/expiring
permission:
- employee_self / manager(team) / HR
purpose:
- 期限切れ / 期限近い資格一覧

## GET /api/v1/certification-masters
permission:
- authenticated user
purpose:
- 資格マスタ参照

## POST /api/v1/certification-masters
permission:
- HR / admin(limited)
purpose:
- 資格マスタ作成

## PATCH /api/v1/certification-masters/{certification_id}
permission:
- HR / admin(limited)
purpose:
- 資格マスタ更新

# 6. skills

## GET /api/v1/employee-skills
permission:
- employee_self / manager(team) / HR
purpose:
- スキル一覧取得

## POST /api/v1/employee-skills
permission:
- employee_self / HR
purpose:
- スキル追加

## PATCH /api/v1/employee-skills/{employee_skill_id}
permission:
- employee_self / manager(comment scope) / HR
purpose:
- スキル状態更新

## POST /api/v1/employee-skills/{employee_skill_id}/evidences
permission:
- employee_self / manager / HR
purpose:
- スキル根拠追加

## PATCH /api/v1/employee-skills/evidences/{employee_skill_evidence_id}/verify
permission:
- HR / designated verifier
purpose:
- 根拠検証

## GET /api/v1/skill-masters
permission:
- authenticated user
purpose:
- スキル辞書取得

## POST /api/v1/skill-masters
permission:
- HR / admin(limited)
purpose:
- スキル辞書追加

## PATCH /api/v1/skill-masters/{skill_id}
permission:
- HR / admin(limited)
purpose:
- スキル辞書更新

# 7. career / achievements

## GET /api/v1/employees/{employee_id}/career-histories
permission:
- employee_self / manager(team) / HR
purpose:
- 経歴一覧取得

## POST /api/v1/employees/{employee_id}/career-histories
permission:
- employee_self / HR
purpose:
- 経歴追加

## PATCH /api/v1/career-histories/{employee_career_history_id}
permission:
- employee_self / HR
purpose:
- 経歴更新

## GET /api/v1/employees/{employee_id}/achievements
permission:
- employee_self / manager(team) / HR
purpose:
- 実績一覧取得

## POST /api/v1/employees/{employee_id}/achievements
permission:
- employee_self / HR
purpose:
- 実績追加

## PATCH /api/v1/achievements/{employee_achievement_id}
permission:
- employee_self / HR
purpose:
- 実績更新

# 8. evaluation cycle

## GET /api/v1/evaluation-cycles
permission:
- manager / HR / executive / admin
purpose:
- 評価サイクル一覧

## POST /api/v1/evaluation-cycles
permission:
- HR
purpose:
- サイクル作成

## PATCH /api/v1/evaluation-cycles/{evaluation_cycle_id}
permission:
- HR
purpose:
- サイクル更新

## POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/open
permission:
- HR
purpose:
- サイクル開始

## POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/publish
permission:
- HR
purpose:
- サイクル公開

## POST /api/v1/evaluation-cycles/{evaluation_cycle_id}/close
permission:
- HR
purpose:
- サイクル締結

# 9. self review

## GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
permission:
- employee_self(self only) / manager(team) / HR
purpose:
- 評価シート詳細

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
permission:
- employee_self
purpose:
- 自己評価一時保存

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
permission:
- employee_self
purpose:
- 自己評価提出

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/withdraw
permission:
- employee_self(before manager review only if allowed)
purpose:
- 提出引戻し

# 10. manager review

## GET /api/v1/manager/review-queue
permission:
- manager
purpose:
- 上長レビュー待ち一覧

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
permission:
- manager
purpose:
- 上長レビュー一時保存

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
permission:
- manager
purpose:
- 上長レビュー提出

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
permission:
- manager / HR
purpose:
- 差戻し
notes:
- 差戻し先ロールと理由必須

# 11. HR review / calibration / approval

## GET /api/v1/hr/review-queue
permission:
- HR
purpose:
- HRレビュー待ち一覧

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/hr-review/save
permission:
- HR
purpose:
- HRレビュー保存

## POST /api/v1/calibration-sessions
permission:
- HR
purpose:
- 校正セッション作成

## GET /api/v1/calibration-sessions/{calibration_session_id}
permission:
- HR
purpose:
- 校正セッション詳細

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
permission:
- HR
purpose:
- 校正結果保存

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
permission:
- HR approver
purpose:
- 評価承認

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/publish
permission:
- HR
purpose:
- 評価公開

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/reopen
permission:
- HR
purpose:
- 公開後再開
notes:
- reopen reason 必須

# 12. requirements / templates

## GET /api/v1/role-requirements
permission:
- manager / HR / executive
purpose:
- 要件一覧取得

## POST /api/v1/role-requirements
permission:
- HR
purpose:
- 要件作成

## PATCH /api/v1/role-requirements/{role_requirement_id}
permission:
- HR
purpose:
- 要件更新

## POST /api/v1/role-requirements/{role_requirement_id}/clone
permission:
- HR
purpose:
- 要件複製

## GET /api/v1/role-requirements/{role_requirement_id}/diff
permission:
- HR / executive
purpose:
- 改版差分表示

## GET /api/v1/templates/evaluations
permission:
- HR
purpose:
- 評価テンプレート一覧

## POST /api/v1/templates/evaluations
permission:
- HR
purpose:
- 評価テンプレート作成

# 13. growth plan / recommendations

## GET /api/v1/growth-plans
permission:
- employee_self / manager(team) / HR
purpose:
- 成長計画一覧

## POST /api/v1/growth-plans
permission:
- employee_self / manager / HR
purpose:
- 成長計画作成

## GET /api/v1/growth-plans/{growth_plan_id}
permission:
- employee_self / manager(team) / HR
purpose:
- 成長計画詳細

## PATCH /api/v1/growth-plans/{growth_plan_id}
permission:
- owner / manager / HR
purpose:
- 成長計画更新

## POST /api/v1/growth-plans/{growth_plan_id}/progress
permission:
- employee_self / manager
purpose:
- 進捗更新

## GET /api/v1/growth-recommendations
permission:
- employee_self / manager(team) / HR
purpose:
- 推奨一覧取得

## POST /api/v1/growth-recommendations/{growth_recommendation_id}/accept
permission:
- employee_self / manager
purpose:
- 推奨受諾

## POST /api/v1/growth-recommendations/{growth_recommendation_id}/reject
permission:
- employee_self / manager
purpose:
- 推奨却下

# 14. MBO linkage

## GET /api/v1/mbo/linked-goals
permission:
- employee_self / manager(team) / HR
purpose:
- 目標連携一覧取得

## POST /api/v1/mbo/refresh
permission:
- HR / service_role_internal
purpose:
- 目標連携再同期

# 15. role-fit / promotion / successor

## GET /api/v1/role-fit/candidates
permission:
- manager / HR / executive
purpose:
- 配置 / 昇格候補抽出

## GET /api/v1/promotion-candidates
permission:
- HR / executive
purpose:
- 昇格候補一覧

## GET /api/v1/successor-candidates
permission:
- HR / executive
purpose:
- 後継者候補一覧

## POST /api/v1/successor-candidates
permission:
- HR
purpose:
- 後継者候補登録

## PATCH /api/v1/successor-candidates/{successor_candidate_id}
permission:
- HR
purpose:
- 後継者候補更新

## GET /api/v1/career-simulations
permission:
- employee_self / manager(team) / HR
purpose:
- キャリア候補一覧

## POST /api/v1/career-simulations
permission:
- employee_self / manager / HR
purpose:
- キャリアシミュレーション実行

# 16. analytics / dashboards

## GET /api/v1/analytics/distribution
permission:
- HR / executive
purpose:
- 分布分析

## GET /api/v1/analytics/skill-heatmap
permission:
- manager / HR
purpose:
- スキルヒートマップ

## GET /api/v1/analytics/9box
permission:
- HR / executive
purpose:
- 9box 表示

## GET /api/v1/analytics/training-roi
permission:
- HR / executive
purpose:
- 研修投資分析

## GET /api/v1/analytics/org-talent-summary
permission:
- executive / HR
purpose:
- 組織別人材力要約

## GET /api/v1/analytics/evaluator-bias
permission:
- HR
purpose:
- 評価者偏り分析

# 17. audit / export

## POST /api/v1/audit-logs/search
permission:
- HR / admin(limited)
purpose:
- 監査ログ検索

## POST /api/v1/exports/evaluations
permission:
- HR
purpose:
- 評価エクスポート作成

## POST /api/v1/exports/analytics
permission:
- HR / executive
purpose:
- 分析エクスポート作成

## GET /api/v1/exports/{export_job_id}
permission:
- requester / HR / executive
purpose:
- エクスポートジョブ状態取得

# 18. settings / administration

## GET /api/v1/admin/users
permission:
- admin / HR(limited)
purpose:
- 利用者一覧

## PATCH /api/v1/admin/users/{employee_id}/roles
permission:
- admin
purpose:
- ロール更新

## GET /api/v1/admin/localization
permission:
- admin / HR(limited)
purpose:
- 多言語設定参照

## PATCH /api/v1/admin/localization
permission:
- admin
purpose:
- 多言語設定更新

## GET /api/v1/admin/currency-settings
permission:
- admin / HR(limited)
purpose:
- 通貨表示設定参照

## PATCH /api/v1/admin/currency-settings
permission:
- admin
purpose:
- 通貨設定更新

## GET /api/v1/admin/integrations
permission:
- admin
purpose:
- 連携設定参照

## PATCH /api/v1/admin/integrations/{integration_code}
permission:
- admin
purpose:
- 連携設定更新

# 19. AI assist

## POST /api/v1/ai-assist/review-comment-draft
permission:
- manager / HR
purpose:
- コメント下書き生成

## POST /api/v1/ai-assist/growth-suggestion-draft
permission:
- manager / HR
purpose:
- 成長提案下書き生成

## POST /api/v1/ai-assist/bias-check
permission:
- HR
purpose:
- 偏り警告補助

## GET /api/v1/ai-assist/references
permission:
- HR / admin(limited)
purpose:
- AI参照履歴取得

# 20. 実装優先順位

## phase A endpoint
- /me
- /home
- /notifications
- /employee/dashboard
- /employee-certifications
- /employee-skills
- /evaluation-sheets/{id}
- /self-review/save
- /self-review/submit
- /manager/review-queue
- /manager-review/save
- /manager-review/submit
- /send-back
- /evaluation-cycles
- /growth-plans
- /growth-plans/{id}/progress
- /role-requirements
- /audit-logs/search

## phase B endpoint
- academics
- career-histories
- achievements
- certification renewal
- skill evidences
- hr/review-queue
- calibration-sessions
- calibration/save
- approve
- publish
- analytics/distribution
- analytics/skill-heatmap
- mbo/linked-goals

## phase C endpoint
- role-fit/candidates
- promotion-candidates
- successor-candidates
- career-simulations
- analytics/9box
- analytics/training-roi
- analytics/evaluator-bias
- exports/*
- admin/*

## phase D endpoint
- ai-assist/*
- reopen
- advanced analytics
- advanced export variants

# 21. 結論
TalentGrowth の full endpoint inventory は、
画面・payload・DDL・RLS と整合する単位で固定する。

特に初期中核は以下である。
- dashboard
- self review
- manager review
- role requirement
- growth plan
- audit
