# TALENT GROWTH PHASE A REQUEST FIXTURE AND CURL BLOCK FIXED

status: draft-phase-a-request-fixture-and-curl-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の POST / PATCH 系について、
fixture JSON と curl block を固定するための資料である。

# 1. fixture policy
- exact payload shape に寄せる
- request body はファイル化できる構成にする
- curl は localhost 呼び出しを前提にする
- request fixture は smoke / manual test / demo に使う

# 2. recommended fixture files
- fixtures/tg/self_review_save.json
- fixtures/tg/self_review_submit.json
- fixtures/tg/manager_review_save.json
- fixtures/tg/manager_review_submit.json
- fixtures/tg/send_back.json
- fixtures/tg/create_role_requirement.json
- fixtures/tg/create_growth_plan.json
- fixtures/tg/notification_read.json

# 3. fixture examples

## self_review_save.json
~~~json
{
  "employee_id": "emp_demo_01",
  "self_review_comment": "現職では店舗運営の再現性は高いが、数値管理と後輩育成に課題がある。",
  "skill_items": [
    {
      "employee_skill_id": "eskill_demo_01",
      "proficiency_level": 4,
      "self_comment": "クレーム初動対応は単独で実施可能"
    },
    {
      "employee_skill_id": "eskill_demo_03",
      "proficiency_level": 2,
      "self_comment": "日次管理は可能だが月次分析は弱い"
    }
  ]
}
~~~

## self_review_submit.json
~~~json
{
  "employee_id": "emp_demo_01",
  "submit_confirmed": true
}
~~~

## manager_review_save.json
~~~json
{
  "manager_employee_id": "emp_demo_mgr_01",
  "manager_review_comment": "運営安定性は高い。次期は数値管理と育成観点を重点強化したい。",
  "score_inputs": {
    "behavior_score": 72,
    "performance_score": 79,
    "current_role_fit_score": 80,
    "target_role_fit_score": 68,
    "growth_potential_score": 83
  }
}
~~~

## manager_review_submit.json
~~~json
{
  "manager_employee_id": "emp_demo_mgr_01",
  "submit_confirmed": true
}
~~~

## send_back.json
~~~json
{
  "target_role_code": "EMPLOYEE",
  "send_back_reason": "根拠不足のため再提出してください"
}
~~~

## create_role_requirement.json
~~~json
{
  "job_role_id": "jrole_store_manager",
  "requirement_version": "2026-H1",
  "overall_weight_skill": 30,
  "overall_weight_certification": 15,
  "overall_weight_experience": 10,
  "overall_weight_performance": 15,
  "overall_weight_behavior": 10,
  "overall_weight_growth": 20
}
~~~

## create_growth_plan.json
~~~json
{
  "employee_id": "emp_demo_01",
  "plan_title": "2026年上期 成長計画",
  "actions": [
    {
      "action_type": "TRAINING",
      "title": "数値管理基礎研修",
      "priority": "HIGH"
    }
  ]
}
~~~

## notification_read.json
~~~json
{
  "notification_ids": ["notif_demo_01"]
}
~~~

# 4. curl block

## self review save
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01/self-review/save \
  -H 'content-type: application/json' \
  -d @fixtures/tg/self_review_save.json && echo
~~~

## self review submit
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01/self-review/submit \
  -H 'content-type: application/json' \
  -d @fixtures/tg/self_review_submit.json && echo
~~~

## manager review save
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01/manager-review/save \
  -H 'content-type: application/json' \
  -d @fixtures/tg/manager_review_save.json && echo
~~~

## manager review submit
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01/manager-review/submit \
  -H 'content-type: application/json' \
  -d @fixtures/tg/manager_review_submit.json && echo
~~~

## send back
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/evaluation-sheets/esheet_demo_01/send-back \
  -H 'content-type: application/json' \
  -d @fixtures/tg/send_back.json && echo
~~~

## create role requirement
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/role-requirements \
  -H 'content-type: application/json' \
  -d @fixtures/tg/create_role_requirement.json && echo
~~~

## create growth plan
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/growth-plans \
  -H 'content-type: application/json' \
  -d @fixtures/tg/create_growth_plan.json && echo
~~~

## notification read
~~~bash
curl -s -X POST http://127.0.0.1:3000/api/v1/notifications/read \
  -H 'content-type: application/json' \
  -d @fixtures/tg/notification_read.json && echo
~~~

# 5. conclusion
phase A の request fixture と curl は、
この block を基準に固定する。
