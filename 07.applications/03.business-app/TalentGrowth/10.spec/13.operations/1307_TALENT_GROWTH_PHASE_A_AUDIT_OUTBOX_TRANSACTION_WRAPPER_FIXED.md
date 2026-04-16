# TALENT GROWTH PHASE A AUDIT OUTBOX TRANSACTION WRAPPER FIXED

status: draft-phase-a-audit-outbox-transaction-wrapper-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の score/state change write に対して、
audit append と outbox append を同一 transaction で扱う wrapper を固定するための資料である。

# 1. wrapper goal
以下を1 transactionで扱う。
- state / score / comment write
- audit append
- outbox append
- commit / rollback

# 2. wrapper use cases
- self review submit
- manager review submit
- send back
- role requirement update with governance significance
- growth progress update if eventized
- future approve / publish path baseline

# 3. wrapper rule
- write success without audit append is not allowed
- eventized mutation without outbox append is not allowed
- partial success is not allowed
- audit_trace_id is generated once and propagated to all writes

# 4. wrapper skeleton
~~~typescript
export async function withAuditOutboxTransaction<T>(input: {
  companyId: string;
  actorEmployeeId: string;
  actorRoleCode: string;
  actionType: string;
  run: (ctx: {
    auditTraceId: string;
    appendAudit: (row: {
      evaluationSheetId: string;
      changedFieldName: string;
      oldValueText?: string | null;
      newValueText?: string | null;
      changeReasonText?: string | null;
    }) => Promise<void>;
    appendOutbox: (event: {
      eventName: string;
      eventDomain: string;
      entityType: string;
      entityId: string;
      payloadJson: unknown;
    }) => Promise<void>;
  }) => Promise<T>;
}): Promise<T> {
  const auditTraceId = "atrace_placeholder";

  // begin transaction
  // provide appendAudit / appendOutbox bound to transaction
  // run body
  // commit or rollback
  return input.run({
    auditTraceId,
    appendAudit: async () => {},
    appendOutbox: async () => {}
  });
}
~~~

# 5. self review submit wrapper example
~~~typescript
const result = await withAuditOutboxTransaction({
  companyId,
  actorEmployeeId,
  actorRoleCode: "EMPLOYEE",
  actionType: "SELF_REVIEW_SUBMIT",
  run: async ({ auditTraceId, appendAudit, appendOutbox }) => {
    // 1. update sheet state
    // 2. append audit
    await appendAudit({
      evaluationSheetId,
      changedFieldName: "evaluation_status_code",
      oldValueText: "SELF_REVIEW_DRAFT",
      newValueText: "SELF_REVIEW_SUBMITTED"
    });

    // 3. append outbox
    await appendOutbox({
      eventName: "tg.evaluation.sheet.self_review_submitted",
      eventDomain: "evaluation",
      entityType: "EVALUATION_SHEET",
      entityId: evaluationSheetId,
      payloadJson: {
        employee_id: actorEmployeeId,
        audit_trace_id: auditTraceId
      }
    });

    return {
      evaluation_sheet_id: evaluationSheetId,
      evaluation_status_code: "SELF_REVIEW_SUBMITTED",
      audit_trace_id: auditTraceId
    };
  }
});
~~~

# 6. repository wrapper support
repositories should expose transaction-aware variants:
- insertEvaluationAuditTx(...)
- insertOutboxEventTx(...)
- updateEvaluationSheetStatusTx(...)
- updateGrowthActionProgressTx(...)

# 7. SQL baseline
audit insert:
~~~sql
insert into tg_evaluation_change_audit (
  evaluation_change_audit_id,
  company_id,
  evaluation_sheet_id,
  changed_by_employee_id,
  changed_by_role_code,
  action_type,
  changed_field_name,
  old_value_text,
  new_value_text,
  change_reason_text,
  changed_at,
  audit_trace_id,
  created_by
) values (
  $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,now(),$11,$12
);
~~~

outbox insert:
~~~sql
insert into tg_outbox_event (
  outbox_event_id,
  company_id,
  event_name,
  event_domain,
  entity_type,
  entity_id,
  payload_json,
  status_code,
  occurred_at,
  audit_trace_id,
  created_by
) values (
  $1,$2,$3,$4,$5,$6,$7,'READY',now(),$8,$9
);
~~~

# 8. wrapper guardrails
- no wrapper for pure read
- no event append for non-eventized write
- if action changes evaluation_state, wrapper use is mandatory
- if action changes final score, wrapper use is mandatory

# 9. conclusion
phase A write core は、
audit + outbox を transaction wrapper で束ねる方式で固定する。
