# TALENT GROWTH PHASE A DB CLIENT HELPER BLOCK FIXED

status: draft-phase-a-db-client-helper-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の DB access 共通入口を
最初に固定するための helper block 資料である。

# 1. helper goal
DB client helper は以下を担う。
- connection creation の一本化
- query 実行関数の一本化
- transaction 実行関数の一本化
- query logging baseline
- request_id / audit_trace_id 連携余地の確保
- route / service / repository 間で DB 初期化を重複させない

# 2. scope
phase A では以下を最低限扱う。
- read query
- write query
- transaction wrapper
- rollback
- typed result placeholder
- error bubbling

# 3. recommended file
- src/server/talent-growth/lib/db.ts

# 4. helper actual block
~~~typescript
import { Pool, PoolClient, QueryResult } from "pg";

let pool: Pool | null = null;

export function getDbPool() {
  if (pool) return pool;

  const connectionString = process.env.DATABASE_URL;
  if (!connectionString) {
    throw new Error("TG_DATABASE_URL_REQUIRED");
  }

  pool = new Pool({
    connectionString
  });

  return pool;
}

export async function dbQuery<T = unknown>(
  text: string,
  params: unknown[] = []
): Promise<QueryResult<T>> {
  const db = getDbPool();
  return db.query<T>(text, params);
}

export async function withDbClient<T>(
  run: (client: PoolClient) => Promise<T>
): Promise<T> {
  const db = getDbPool();
  const client = await db.connect();
  try {
    return await run(client);
  } finally {
    client.release();
  }
}

export async function withDbTransaction<T>(
  run: (client: PoolClient) => Promise<T>
): Promise<T> {
  return withDbClient(async (client) => {
    await client.query("begin");
    try {
      const result = await run(client);
      await client.query("commit");
      return result;
    } catch (error) {
      await client.query("rollback");
      throw error;
    }
  });
}
~~~

# 5. logging extension baseline
phase A optional expansion:
- query label
- request_id
- audit_trace_id
- duration_ms
- row_count

example extension shape:
~~~typescript
export async function dbQueryLogged<T = unknown>(input: {
  text: string;
  params?: unknown[];
  label?: string;
  requestId?: string;
  auditTraceId?: string | null;
}) {
  const startedAt = Date.now();
  const result = await dbQuery<T>(input.text, input.params ?? []);
  const durationMs = Date.now() - startedAt;

  console.log(JSON.stringify({
    scope: "talent-growth-db",
    label: input.label ?? "query",
    request_id: input.requestId ?? null,
    audit_trace_id: input.auditTraceId ?? null,
    duration_ms: durationMs,
    row_count: result.rowCount ?? null
  }));

  return result;
}
~~~

# 6. repository usage example
~~~typescript
import { dbQuery } from "@/server/talent-growth/lib/db";

export async function findEvaluationSheetRepo(input: {
  companyId: string;
  evaluationSheetId: string;
}) {
  const result = await dbQuery(
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
~~~

# 7. transaction usage example
~~~typescript
import { withDbTransaction } from "@/server/talent-growth/lib/db";

export async function exampleSubmitSelfReview() {
  return withDbTransaction(async (client) => {
    await client.query("update tg_evaluation_sheet set evaluation_status_code = $1 where evaluation_sheet_id = $2", [
      "SELF_REVIEW_SUBMITTED",
      "esheet_demo_01"
    ]);

    await client.query("insert into tg_evaluation_change_audit (...) values (...)");

    await client.query("insert into tg_outbox_event (...) values (...)");

    return { ok: true };
  });
}
~~~

# 8. guardrails
- DATABASE_URL required
- no per-repository new Pool creation
- no manual transaction in route layer
- service/repository only through helper
- rollback mandatory on error

# 9. conclusion
phase A DB access は、
db.ts を共通入口とする helper block で固定する。
