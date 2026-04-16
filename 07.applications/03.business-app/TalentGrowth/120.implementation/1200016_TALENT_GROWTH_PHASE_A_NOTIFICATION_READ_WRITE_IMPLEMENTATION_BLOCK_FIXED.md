# TALENT GROWTH PHASE A NOTIFICATION READ WRITE IMPLEMENTATION BLOCK FIXED

status: draft-phase-a-notification-read-write-implementation-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の notification read/write を
最初に実装する block として固定するための資料である。

# 1. phase A notification scope
read:
- GET /api/v1/notifications

write:
- POST /api/v1/notifications/read

creation side:
- outbox publisher job から tg_notification を生成
- phase A は in-app baseline を中心とする

# 2. read query skeleton
~~~sql
select
  notification_id,
  notification_type_code,
  target_employee_id,
  title_key,
  body_key,
  body_params_json,
  deep_link_type,
  deep_link_target_id,
  priority_code,
  unread_flag,
  notification_status_code,
  created_at
from tg_notification
where company_id = $1
  and target_employee_id = $2
order by unread_flag desc, created_at desc
limit $3;
~~~

# 3. mark read query skeleton
~~~sql
update tg_notification
set
  unread_flag = false,
  notification_status_code = case
    when notification_status_code = 'ACTIVE' then 'READ'
    else notification_status_code
  end
where company_id = $1
  and target_employee_id = $2
  and notification_id = any($3::text[])
returning notification_id;
~~~

# 4. notification list route skeleton
~~~typescript
export async function GET() {
  const requestId = "req_notification_list_stub";

  // 1. auth context
  // 2. list notifications by target_employee_id
  // 3. return exact payload envelope

  return Response.json({
    ok: true,
    data: {
      items: [
        {
          notification_id: "notif_demo_01",
          notification_type_code: "REVIEW_REQUEST",
          target_employee_id: "emp_demo_mgr_01",
          title_key: "tg.notify.review_request.title",
          body_key: "tg.notify.review_request.body",
          body_params_json: {
            target_employee_name: "山田 太郎",
            cycle_name: "2026年上期評価"
          },
          deep_link_type: "EVALUATION_SHEET",
          deep_link_target_id: "esheet_demo_01",
          priority_code: "HIGH",
          unread_flag: true,
          notification_status_code: "ACTIVE"
        }
      ]
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

# 5. notification read route skeleton
~~~typescript
export async function POST(request: Request) {
  const requestId = "req_notification_read_stub";
  const body = await request.json();

  // 1. auth context
  // 2. validate body.notification_ids
  // 3. mark read by target_employee_id
  // 4. return changed ids

  return Response.json({
    ok: true,
    data: {
      notification_ids: body.notification_ids ?? [],
      marked_as_read_count: Array.isArray(body.notification_ids) ? body.notification_ids.length : 0
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

# 6. notification read validation skeleton
~~~typescript
export function validateNotificationReadPayload(body: any) {
  const issues: Array<{ field: string; reason: string; code: string }> = [];

  if (!Array.isArray(body.notification_ids) || body.notification_ids.length === 0) {
    issues.push({
      field: "notification_ids",
      reason: "must_be_non_empty_array",
      code: "TG_VALIDATION_REQUIRED"
    });
  }

  return issues.length ? { ok: false, issues } : { ok: true };
}
~~~

# 7. notification creation skeleton
~~~typescript
export async function createInAppNotification(input: {
  companyId: string;
  sourceEventId: string;
  notificationTypeCode: string;
  targetEmployeeId: string;
  titleKey: string;
  bodyKey: string;
  bodyParamsJson: Record<string, unknown>;
  deepLinkType: string | null;
  deepLinkTargetId: string | null;
  priorityCode: string;
  auditTraceId: string | null;
}) {
  // insert tg_notification
  // insert tg_notification_delivery with channel_code = IN_APP, delivery_status_code = DELIVERED or SENT baseline
  return {
    notification_id: "notif_placeholder"
  };
}
~~~

# 8. phase A notification event mapping
- tg.evaluation.sheet.self_review_submitted
  -> REVIEW_REQUEST to manager

- tg.evaluation.sheet.sent_back
  -> ACTION_REQUIRED to employee or manager

- tg.evaluation.sheet.published
  -> RESULT_READY to employee

- tg.certification.item.expiring_soon
  -> CERT_EXPIRY_ALERT to employee

- tg.growth_plan.plan.review_due
  -> GROWTH_REVIEW_DUE to employee and manager

# 9. phase A guardrails
- notification read must only affect target user's own rows
- no body text direct render at storage time required yet
- title_key/body_key must remain template-based
- no push/email required for phase A completion
- direct user action must not create notification rows bypassing outbox when event-based

# 10. conclusion
phase A notification implementation は、
in-app baseline read/write と event-based creation を中心に固定する。
