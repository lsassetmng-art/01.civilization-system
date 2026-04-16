# TALENT GROWTH RLS ACCESS POLICY FIXED

status: draft-rls-access-policy-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の row level security と access policy の骨格を固定するための資料である。

前提:
- company scope は必須
- employee_self / manager / HR / executive / admin の責務を分ける
- 評価内容は機微情報として扱う
- admin は技術運用権限であり、無制限閲覧を既定にしない
- AI は主体にならず、参照履歴のみ残す

# 1. principal roles
- employee_self
- manager
- HR_operator
- executive_viewer
- system_admin
- service_role_internal

# 2. access design principles
- least privilege
- company boundary strict
- organization scope strict
- evaluation state aware
- raw detail と aggregated analytics を分ける
- direct table write より API 経由を優先する
- sensitive comments は公開範囲を分離する

# 3. helper predicate ideas
実装時は以下の helper function / view を使う前提でよい。

- auth_company_id()
- auth_employee_id()
- auth_role_codes()
- can_view_employee(target_employee_id)
- can_manage_employee(target_employee_id)
- can_view_org(target_organization_id)
- is_hr_operator()
- is_executive_viewer()
- is_system_admin()
- is_service_role_internal()

# 4. テーブル群ごとのRLS方針

## 4-1. employee_profile
select:
- employee_self は自分のみ可
- manager は自組織 / 配下のみ可
- HR_operator は company scope 可
- executive_viewer は raw detail ではなく要件に応じて限定可
- system_admin は既定で raw 人事データを全面可としない

insert/update/delete:
- employee_self は自己編集許可項目のみ API 経由
- HR_operator は権限範囲内で可
- system_admin は原則設定 / 運用支援のみ

## 4-2. employee_academic_history / employee_career_history / employee_achievement
select:
- employee_self 自分のみ
- manager 配下のみ
- HR_operator company scope 可

write:
- employee_self は自分データを下書き / 申請ベースで更新可
- manager は本人データを代理更新しない
- HR_operator は修正権限可

## 4-3. employee_certification / employee_certification_renewal
select:
- employee_self 自分のみ
- manager 配下のみ
- HR_operator company scope 可

write:
- employee_self は更新記録申請可
- manager は閲覧中心
- HR_operator は確定 / 補正可

## 4-4. employee_skill / employee_skill_evidence
select:
- employee_self 自分のみ
- manager 配下のみ
- HR_operator company scope 可

write:
- employee_self は自分の下書き更新可
- manager は評価時の manager_comment 更新可
- evidence verification は HR / 指定権限者のみ

## 4-5. masters
対象:
- tg_job_family_master
- tg_job_role_master
- tg_grade_master
- tg_skill_master
- tg_certification_master

select:
- company scope の認証済ユーザーは read 可

write:
- HR_operator または system_admin のみ
- employee_self / manager / executive_viewer は不可

## 4-6. role_requirement / role_requirement_skill / role_requirement_certification
select:
- employee_self は自分の現職 / 目標職に必要な範囲のみ可
- manager は配下対象に必要な範囲可
- HR_operator は company scope 可
- executive_viewer は read 可

write:
- HR_operator のみ
- system_admin は補助のみ
- manager / employee_self は不可

## 4-7. evaluation_cycle
select:
- 認証済ユーザーは自分に関係あるサイクルを read 可
- HR_operator は company scope 可

write:
- HR_operator のみ

## 4-8. evaluation_sheet
select:
- employee_self は自分の sheet のみ
- manager は配下の sheet のみ
- HR_operator は company scope 可
- executive_viewer は raw sheet 全面可を既定にしない
- executive_viewer は集計 / サマリ中心

write:
- employee_self は SELF_REVIEW_DRAFT 相当で自己入力部分のみ
- manager は MANAGER_REVIEW_DRAFT 相当でレビュー部分のみ
- HR_operator は HR review / calibration / approve / reopen を担当
- direct table update ではなく API / procedure 経由を推奨

## 4-9. evaluation_score_detail
select:
- employee_self は公開済 / 許可済範囲のみ
- manager は配下対象分のみ
- HR_operator は company scope 可
- executive_viewer は明細より集計優先

write:
- scoring engine / HR_operator / service_role_internal
- employee_self の direct write 不可
- manager の direct score write は API 経由に限定

## 4-10. evaluation_comment
select:
- employee_self は公開対象コメントのみ
- manager は配下のレビューコメント可
- HR_operator は全件可
- executive_viewer は原則 raw comment 不可

write:
- employee_self は self review comment 可
- manager は manager review comment 可
- HR_operator は calibration / HR comment 可
- sensitive flag がある comment は employee 非公開可

## 4-11. evaluation_evidence
select:
- employee_self は自分が添付したもの + 自分の評価根拠
- manager は配下の評価根拠
- HR_operator は company scope 可
- executive_viewer は raw file 既定不可

write:
- employee_self / manager / HR は役割範囲で可
- verification は HR / 指定権限者のみ

## 4-12. evaluation_snapshot / role_fit_snapshot / training_roi_snapshot
select:
- employee_self は自分分のみ
- manager は配下のみ
- HR_operator は company scope 可
- executive_viewer は集計 / サマリ read 可

write:
- service_role_internal
- HR_operator
- direct end-user write 不可

## 4-13. evaluation_change_audit / evaluation_approval / calibration_log
select:
- HR_operator は full 可
- manager は自分が関与したもの一部可
- employee_self は必要最小限の change summary のみ
- executive_viewer は原則不可または強く制限

write:
- service_role_internal / HR_operator
- direct user write 不可

## 4-14. growth_plan / growth_action / growth_recommendation
select:
- employee_self は自分のみ
- manager は配下のみ
- HR_operator は company scope 可

write:
- employee_self は progress 更新可
- manager は review / adjustment 可
- HR_operator は company policy に応じて可

## 4-15. successor_candidate
select:
- HR_operator 可
- executive_viewer 可
- manager は対象権限範囲内で限定可
- employee_self 不可

write:
- HR_operator のみ
- service_role_internal で算出補助可

## 4-16. ai_assist_reference_log / audit_export_log
select:
- HR_operator 可
- system_admin は運用ログとして限定可
- employee_self / manager / executive_viewer は原則不可

write:
- service_role_internal
- HR_operator
- system_admin 一部

# 5. state-aware write policy

## SELF_REVIEW_DRAFT
- employee_self の自己入力可
- manager / HR は read 中心

## SELF_REVIEW_SUBMITTED
- employee_self direct edit 不可
- manager review 開始可
- sent back により employee editable に戻す

## MANAGER_REVIEW_DRAFT
- manager write 可
- employee_self score detail direct edit 不可

## MANAGER_REVIEW_SUBMITTED
- HR review 可
- manager 追記は reopen or send back 経由

## CALIBRATION_IN_PROGRESS
- HR_operator のみ調整可
- manager / employee_self は read 制限あり

## APPROVED / PUBLISHED
- raw edit 不可
- reopen flow 必須
- 履歴は削除しない

# 6. executive access stance
- executive_viewer は aggregate first
- raw personal comments は既定不可
- successor, shortage, investment view を優先
- 個人詳細は業務必要時のみ追加権限で開ける

# 7. admin access stance
- system_admin は technical admin である
- user / role / integration / settings 管理を主責務とする
- raw evaluation content 全件閲覧は既定不可
- 必要なら break-glass policy を別途持つ

# 8. SQL policy skeleton examples
~~~sql
-- example only
alter table tg_employee_profile enable row level security;
alter table tg_evaluation_sheet enable row level security;
alter table tg_growth_plan enable row level security;

-- employee self can read own profile
create policy tg_employee_profile_self_select
on tg_employee_profile
for select
using (
  company_id = auth_company_id()
  and employee_id = auth_employee_id()
);

-- manager can read team evaluation sheets
create policy tg_evaluation_sheet_manager_select
on tg_evaluation_sheet
for select
using (
  company_id = auth_company_id()
  and can_manage_employee(employee_id)
);

-- HR can read/write evaluation sheets
create policy tg_evaluation_sheet_hr_all
on tg_evaluation_sheet
for all
using (
  company_id = auth_company_id()
  and is_hr_operator()
)
with check (
  company_id = auth_company_id()
  and is_hr_operator()
);
~~~

# 9. break-glass policy
高機微データへの緊急アクセスは、
通常RLSとは別に以下を要求する。

- 明示的申請
- reason 必須
- 有効期限付き
- audit trace 必須
- 事後レビュー必須

# 10. 結論
TalentGrowth の access policy は、
employee_self / manager / HR / executive / admin を
同一権限にせず、
company scope, organization scope, evaluation state を
組み合わせて制御する。

特に固定する原則は以下である。
- employee は自分中心
- manager は配下中心
- HR は制度運用中心
- executive は集計中心
- admin は技術運用中心
