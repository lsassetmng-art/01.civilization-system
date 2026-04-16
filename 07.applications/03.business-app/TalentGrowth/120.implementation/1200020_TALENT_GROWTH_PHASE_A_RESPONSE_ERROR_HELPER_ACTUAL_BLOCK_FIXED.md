# TALENT GROWTH PHASE A RESPONSE ERROR HELPER ACTUAL BLOCK FIXED

status: draft-phase-a-response-error-helper-actual-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の response / error helper を
実装開始しやすい actual block として固定するための資料である。

# 1. helper goal
- success envelope unify
- error envelope unify
- request_id / server_time / version を毎回乗せる
- validation / forbidden / conflict / state errors を整理する

# 2. response helper actual block
~~~typescript
export type TalentGrowthErrorDetail = {
  field?: string;
  reason?: string;
  code?: string;
};

export function tgOk(data: unknown, requestId = "req_placeholder") {
  return Response.json({
    ok: true,
    data,
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}

export function tgFail(
  code: string,
  message: string,
  details: TalentGrowthErrorDetail[] = [],
  requestId = "req_placeholder",
  status = 400
) {
  return Response.json({
    ok: false,
    error: {
      code,
      message,
      details
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  }, { status });
}
~~~

# 3. error mapping helper block
~~~typescript
export function tgErrorStatus(code: string): number {
  switch (code) {
    case "TG_AUTH_REQUIRED":
      return 401;
    case "TG_ACCESS_FORBIDDEN":
    case "TG_ACCESS_SCOPE_VIOLATION":
      return 403;
    case "TG_NOT_FOUND":
    case "TG_NOT_FOUND_EMPLOYEE":
    case "TG_NOT_FOUND_ROLE":
    case "TG_NOT_FOUND_SKILL":
    case "TG_NOT_FOUND_CERTIFICATION":
    case "TG_NOT_FOUND_EVALUATION_SHEET":
      return 404;
    case "TG_CONFLICT_LOCK_VERSION_MISMATCH":
      return 409;
    case "TG_STATE_INVALID_TRANSITION":
      return 409;
    default:
      return 400;
  }
}
~~~

# 4. try/catch helper block
~~~typescript
export function tgHandleRouteError(error: unknown, requestId = "req_placeholder") {
  if (error instanceof Error) {
    const code = error.message || "TG_UNKNOWN_ERROR";
    return tgFail(code, "request failed", [], requestId, tgErrorStatus(code));
  }
  return tgFail("TG_UNKNOWN_ERROR", "request failed", [], requestId, 500);
}
~~~

# 5. validation fail helper block
~~~typescript
export function tgFailValidation(
  issues: Array<{ field: string; reason: string; code: string }>,
  requestId = "req_placeholder"
) {
  const code = issues[0]?.code || "TG_VALIDATION_ERROR";
  return tgFail(code, "validation failed", issues, requestId, 400);
}
~~~

# 6. route usage example
~~~typescript
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";

export async function POST(request: Request) {
  const requestId = "req_example";

  try {
    const body = await request.json();
    const validation = { ok: true as const };

    if (!validation.ok) {
      return tgFailValidation(validation.issues, requestId);
    }

    return tgOk({ status: "UPDATED" }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
~~~

# 7. guardrails
- no raw thrown error to user
- no per-route custom envelope drift
- no missing meta block
- error code first, message second

# 8. conclusion
phase A response/error helper は、
この actual block を基準に route 共通部品として固定する。
