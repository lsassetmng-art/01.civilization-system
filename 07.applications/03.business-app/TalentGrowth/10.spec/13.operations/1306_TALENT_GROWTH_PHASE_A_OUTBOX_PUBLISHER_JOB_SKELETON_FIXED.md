# TALENT GROWTH PHASE A OUTBOX PUBLISHER JOB SKELETON FIXED

status: draft-phase-a-outbox-publisher-job-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の outbox publisher job を
最初に固定するための skeleton 資料である。

# 1. job identity
job_name:
- tg.job.outbox.publish

purpose:
- tg_outbox_event の READY / PENDING を拾い、
  notification creation or downstream publish へ渡す

# 2. phase A scope
phase A で扱うイベント:
- tg.evaluation.sheet.self_review_submitted
- tg.evaluation.sheet.manager_review_submitted
- tg.evaluation.sheet.sent_back
- tg.evaluation.sheet.published
- tg.certification.item.expiring_soon
- tg.growth_plan.plan.review_due

# 3. state model
input statuses:
- PENDING
- READY

working statuses:
- PUBLISHING

terminal statuses:
- PUBLISHED
- FAILED
- DEAD_LETTER

# 4. publisher flow
1. READY / PENDING rows select
2. status -> PUBLISHING
3. event_name dispatch
4. notification creation if needed
5. consumed_by_json update
6. status -> PUBLISHED
7. on error -> retry_count++ and FAILED or DEAD_LETTER

# 5. select query skeleton
~~~sql
select
  outbox_event_id,
  company_id,
  event_name,
  event_domain,
  entity_type,
  entity_id,
  payload_json,
  retry_count,
  audit_trace_id
from tg_outbox_event
where status_code in ('PENDING', 'READY')
  and available_at <= now()
order by occurred_at asc
limit $1;
~~~

# 6. publish lock query skeleton
~~~sql
update tg_outbox_event
set
  status_code = 'PUBLISHING',
  last_retry_at = now()
where outbox_event_id = $1
  and status_code in ('PENDING', 'READY')
returning outbox_event_id;
~~~

# 7. success update query skeleton
~~~sql
update tg_outbox_event
set
  status_code = 'PUBLISHED',
  published_at = now(),
  consumed_by_json = coalesce(consumed_by_json, '[]'::jsonb) || to_jsonb($2::text)
where outbox_event_id = $1;
~~~

# 8. failure update query skeleton
~~~sql
update tg_outbox_event
set
  retry_count = retry_count + 1,
  last_error_code = $2,
  last_error_message = $3,
  status_code = case
    when retry_count + 1 >= $4 then 'DEAD_LETTER'
    else 'FAILED'
  end,
  available_at = case
    when retry_count + 1 >= $4 then available_at
    else now() + ($5 || ' seconds')::interval
  end
where outbox_event_id = $1;
~~~

# 9. job function skeleton
~~~typescript
export async function publishOutboxBatch(input: {
  batchSize: number;
  consumerName: string;
}) {
  // 1. select ready rows
  // 2. for each row:
  //    a. lock row by moving to PUBLISHING
  //    b. dispatch by event_name
  //    c. create notification where needed
  //    d. mark published
  //    e. on error mark failed / dead letter
  // 3. return summary
  return {
    processed_count: 0,
    published_count: 0,
    failed_count: 0,
    dead_letter_count: 0
  };
}
~~~

# 10. event dispatch skeleton
~~~typescript
export async function dispatchOutboxEvent(event: {
  event_name: string;
  payload_json: unknown;
}) {
  switch (event.event_name) {
    case "tg.evaluation.sheet.self_review_submitted":
      // create manager review request notification
      return { handled: true };

    case "tg.evaluation.sheet.sent_back":
      // create action required notification
      return { handled: true };

    case "tg.certification.item.expiring_soon":
      // create certification alert notification
      return { handled: true };

    default:
      return { handled: false, reason: "unsupported_event" };
  }
}
~~~

# 11. retry policy baseline
recommended baseline:
- max retry: 5
- backoff seconds: 60, 300, 900, 3600
- DEAD_LETTER after max retry reached

# 12. observability baseline
job summary should return:
- processed_count
- published_count
- failed_count
- dead_letter_count
- last_error_code summary optional

job log fields recommended:
- job_run_id
- job_name
- started_at
- finished_at
- status_code
- processed_count
- success_count
- failed_count

# 13. phase A guardrails
- no direct end-user notification send outside outbox job
- no status move to PUBLISHED without downstream handling step
- notification duplicate prevention must consider dedupe_key
- dead letter must preserve audit_trace_id

# 14. conclusion
phase A outbox publisher job は、
READY/PENDING -> PUBLISHING -> PUBLISHED/FAILED/DEAD_LETTER
の明示状態機械で固定する。
