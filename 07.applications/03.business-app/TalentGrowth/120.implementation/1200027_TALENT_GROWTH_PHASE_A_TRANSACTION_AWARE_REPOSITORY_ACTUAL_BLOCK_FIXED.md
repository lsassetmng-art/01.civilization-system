# TALENT GROWTH PHASE A TRANSACTION-AWARE REPOSITORY ACTUAL BLOCK FIXED

status: draft-phase-a-transaction-aware-repository-actual-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の transaction-aware repository actual block を
固定するための資料である。

# 1. goal
transaction-aware repository は以下を担う。
- client を受け取る query 関数を用意する
- transaction wrapper 内で複数repositoryを束ねられるようにする
- audit / outbox / status update を1 transactionで実行する
- non-transaction path と transaction path の責務を分ける

# 2. naming rule
non-tx function:
- findEvaluationSheetRepo(...)
- listEmployeeSkillsRepo(...)

tx function:
- updateEvaluationSheetStatusTx(...)
- insertEvaluationAuditTx(...)
- insertOutboxEventTx(...)

# 3. actual block
~~~typescript
import type { PoolClient } from "pg";
import { dbQuery } from "@/server/talent-growth/lib/db";

export async function findEvaluationSheetRepo(input: {
  companyId: string;
  evaluationSheetId: string;
}) {
  const result = await dbQuery<{
    evaluation_sheet_id: string;
    evaluation_status_code: string;
    lock_version: number;
  }>(
    `
      select evaluation_sheet_id, evaluation_status_code, lock_version
      from tg_evaluation_sheet
      where company_id = $1
        and evaluation_sheet_id = $2
        and deleted_at is null
    `,
    [input.companyId, input.evaluationSheetId]
  );

  return result.rows[0] ?? null;
}

export async function updateEvaluationSheetStatusTx(
  client: PoolClient,
  input: {
    companyId: string;
    evaluationSheetId: string;
    nextStatusCode: string;
    actorEmployeeId: string;
    auditTraceId: string | null;
    lockVersion?: number;
  }
) {
  const result = await client.query<{
    evaluation_sheet_id: string;
    evaluation_status_code: string;
    lock_version: number;
  }>(
    `
      update tg_evaluation_sheet
      set
        evaluation_status_code = $3,
        updated_at = now(),
        updated_by = $4,
        audit_trace_id = $5,
        lock_version = lock_version + 1
      where company_id = $1
        and evaluation_sheet_id = $2
        and ($6::integer is null or lock_version = $6)
      returning evaluation_sheet_id, evaluation_status_code, lock_version
    `,
    [
      input.companyId,
      input.evaluationSheetId,
      input.nextStatusCode,
      input.actorEmployeeId,
      input.auditTraceId,
      input.lockVersion ?? null
    ]
  );

  return result.rows[0] ?? null;
}

export async function insertEvaluationAuditTx(
  client: PoolClient,
  input: {
    evaluationChangeAuditId: string;
    companyId: string;
    evaluationSheetId: string;
    changedByEmployeeId: string;
    changedByRoleCode: string;
    actionType: string;
    changedFieldName: string;
    oldValueText?: string | null;
    newValueText?: string | null;
    changeReasonText?: string | null;
    auditTraceId: string | null;
    createdBy: string;
  }
) {
  await client.query(
    `
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
      )
    `,
    [
      input.evaluationChangeAuditId,
      input.companyId,
      input.evaluationSheetId,
      input.changedByEmployeeId,
      input.changedByRoleCode,
      input.actionType,
      input.changedFieldName,
      input.oldValueText ?? null,
      input.newValueText ?? null,
      input.changeReasonText ?? null,
      input.auditTraceId,
      input.createdBy
    ]
  );
}

export async function insertOutboxEventTx(
  client: PoolClient,
  input: {
    outboxEventId: string;
    companyId: string;
    eventName: string;
    eventDomain: string;
    entityType: string;
    entityId: string;
    payloadJson: unknown;
    auditTraceId: string | null;
    createdBy: string;
  }
) {
  await client.query(
    `
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
      )
    `,
    [
      input.outboxEventId,
      input.companyId,
      input.eventName,
      input.eventDomain,
      input.entityType,
      input.entityId,
      input.payloadJson,
      input.auditTraceId,
      input.createdBy
    ]
  );
}
~~~

# 4. service orchestration example
~~~typescript
import { withDbTransaction } from "@/server/talent-growth/lib/db";
import {
  updateEvaluationSheetStatusTx,
  insertEvaluationAuditTx,
  insertOutboxEventTx
} from "@/server/talent-growth/repositories/evaluationRepository";

export async function submitSelfReviewExample(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
}) {
  const auditTraceId = "atrace_placeholder";

  return withDbTransaction(async (client) => {
    const updated = await updateEvaluationSheetStatusTx(client, {
      companyId: input.companyId,
      evaluationSheetId: input.evaluationSheetId,
      nextStatusCode: "SELF_REVIEW_SUBMITTED",
      actorEmployeeId: input.actorEmployeeId,
      auditTraceId
    });

    await insertEvaluationAuditTx(client, {
      evaluationChangeAuditId: "eaudit_placeholder",
      companyId: input.companyId,
      evaluationSheetId: input.evaluationSheetId,
      changedByEmployeeId: input.actorEmployeeId,
      changedByRoleCode: "EMPLOYEE",
      actionType: "SELF_REVIEW_SUBMIT",
      changedFieldName: "evaluation_status_code",
      oldValueText: "SELF_REVIEW_DRAFT",
      newValueText: "SELF_REVIEW_SUBMITTED",
      auditTraceId,
      createdBy: input.actorEmployeeId
    });

    await insertOutboxEventTx(client, {
      outboxEventId: "outevt_placeholder",
      companyId: input.companyId,
      eventName: "tg.evaluation.sheet.self_review_submitted",
      eventDomain: "evaluation",
      entityType: "EVALUATION_SHEET",
      entityId: input.evaluationSheetId,
      payloadJson: {
        employee_id: input.actorEmployeeId,
        audit_trace_id: auditTraceId
      },
      auditTraceId,
      createdBy: input.actorEmployeeId
    });

    return updated;
  });
}
~~~

# 5. guardrails
- tx variants must not create/close transactions themselves
- service owns transaction boundary
- repository owns SQL
- no route-layer tx orchestration
- lock_version mismatch must be surfaced cleanly

# 6. conclusion
phase A repository 実装は、
non-tx / tx-aware を分ける方針で固定する。
