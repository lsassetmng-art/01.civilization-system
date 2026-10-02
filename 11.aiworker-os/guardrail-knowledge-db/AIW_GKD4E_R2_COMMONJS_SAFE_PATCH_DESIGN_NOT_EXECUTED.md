# AIWorkerOS Guardrail Knowledge DB GKD-4E-R2 CommonJS-safe Patch Design

DOCUMENT_STATUS=NOT_EXECUTED_PATCH_DESIGN
PHASE=GKD-4E-R2_COMMONJS_SAFE_PATCH_DESIGN_NO_PATCH
TARGET_OS=11.aiworker-os
TARGET_DOMAIN=guardrail-knowledge-db

GUARDS:
- DB_WRITE=NO
- DDL_APPLY=NO
- SEED_APPLY=NO
- API_POST=NO
- CODE_PATCH=NO
- CLEANUP=NO
- GIT_PUSH=NO
- FILE_MODIFY=DESIGN_ONLY

============================================================
1. 結論
============================================================

GKD-4E-R2では、実patchはまだ行わない。

理由:
- AIWorkerOS working tree が大量dirty状態。
- GKD-4Eの前回失敗原因は CommonJS server.js に top-level await / ESM import を入れたこと。
- server.js は MODULE_KIND=commonjs_by_syntax と判定されている。
- server.js 現在構文は SERVER_SYNTAX_STATUS=0。
- したがって、次に実patchする場合は CommonJS-safe helper を使う。

============================================================
2. dirty tree 前提
============================================================

現在のdirty概要:

- GIT_STATUS_LINE_COUNT=0
- GIT_DIFF_NAME_COUNT=0
- UNTRACKED_COUNT=0
- UNTRACKED_RUNTIME_COUNT=0

この状態では以下は禁止:

- git checkout -- .
- git clean -fd
- runtime全体cleanup
- GKD以外の差分を巻き込むpatch
- git push

============================================================
3. R2の正式方針
============================================================

R2実patch時の対象は、原則この2つだけ。

1. runtime-execution-http-api/server.js
2. runtime-execution-http-api/guardrail/guardrail-runtime-preflight.cjs

ただし、server.jsの実行開始点が一意に取れない場合は、helper作成までで止める。
曖昧な状態でrequest streamやroute handlerを書き換えない。

============================================================
4. CommonJS-safe helper方針
============================================================

helperは .cjs とする。

ファイル:
- runtime-execution-http-api/guardrail/guardrail-runtime-preflight.cjs

server.js側:

```js
const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
```

禁止:

```js
await import(...)
import { ... } from "..."
top-level await
```

理由:
server.js は CommonJS構文で動いているため。

============================================================
5. helper責務
============================================================

helperが持つ関数:

- inferGuardrailWorkType(input)
- buildGuardrailPreflightInput(runtimeRequest)
- runGuardrailPreflight(runtimeRequest)
- persistGuardrailRuntimeCheckResult(runtimeRequest, decision)
- runAndPersistGuardrailPreflight(runtimeRequest)

helperの責務:

- PERSONA_DATABASE_URL を使う
- Guardrail DB view を読む
- decision を作る
- guardrail_runtime_check_result に保存する
- blocked decision を返す

helperの非責務:

- AICM表示
- CX22073JW参照
- CommonOS UI
- DDL/seed
- git操作
- runtime queue全体のrefactor

============================================================
6. server.js patch方針
============================================================

server.jsには最小差分だけを入れる。

候補1: helper requireのみ

```js
const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
```

候補2: wrapper関数追加

```js
async function runRuntimeGuardrailPreflight(runtimeRequest) {
  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
}
```

候補3: 実行開始直前の一意な箇所がある場合だけ、以下を入れる

```js
const guardrailDecision = await runRuntimeGuardrailPreflight(runtimeRequest);
if (guardrailDecision && guardrailDecision.blocking_flag) {
  return existingBlockedResponseShape(guardrailDecision);
}
```

ただし、existingBlockedResponseShape は既存response形式に合わせる。
新しいresponse形式を勝手に作らない。

============================================================
7. 実patch時の一意性条件
============================================================

GKD-4E-R2 apply は、以下が満たされる場合のみ許可する。

- server.js の実行開始点が1つに特定できる
- request/queue item の変数名が明確
- response/output の既存形式が明確
- DB helper/pool追加が既存設計と衝突しない
- node --check が通る
- secret scan が0
- git diff が server.js + guardrail-runtime-preflight.cjs のみ
- GKD以外のdirty差分を触らない

満たせない場合:
- helper設計だけ作る
- REVIEW_REQUIRED で停止

============================================================
8. rollback方針
============================================================

大量dirty treeのため、以下は禁止:

- git checkout -- .
- git clean -fd

R2 apply時のrollbackは、対象ファイル限定。

対象:
- runtime-execution-http-api/server.js
- runtime-execution-http-api/guardrail/guardrail-runtime-preflight.cjs

安全rollback方法:

1. patch前に server.js を RUN_DIR にバックアップ
2. helper新規作成前に helper存在有無を記録
3. 失敗時:
   - server.js をバックアップから戻す
   - helperがR2で新規作成された場合だけ削除
4. git clean は使わない

============================================================
9. verification方針
============================================================

R2 apply後の必須検証:

- node --check server.js
- node --check guardrail-runtime-preflight.cjs
- read-only DB smoke:
  - aiworker.vw_guardrail_active_rule
  - aiworker.vw_guardrail_preflight_for_scope
  - aiworker.vw_guardrail_blocking_condition
- git diff file scope check
- secret scan
- server boot check only if needed
- API POST smoke は別GO

============================================================
10. API POST方針
============================================================

GKD-4E-R2 apply時点では API_POST=NO を原則とする。

理由:
- runtime route body shape を誤認すると危険
- POSTはguardrail_runtime_check_resultへのDB writeを発生させる可能性がある
- API POST検証は GKD-4F として分離する

============================================================
11. 完了条件
============================================================

R2設計の完了条件:

- CommonJS-safe patch方針が明文化されている
- dirty tree前提の禁止事項が明文化されている
- rollbackが対象限定になっている
- API POSTが分離されている
- AICM/CX/CommonOS非対象が明記されている
- 実コードpatchが行われていない

