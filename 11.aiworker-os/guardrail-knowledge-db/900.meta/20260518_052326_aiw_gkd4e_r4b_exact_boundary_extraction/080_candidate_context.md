# GKD-4E-R4B Candidate Context

PHASE=GKD-4E-R4B_EXACT_BOUNDARY_EXTRACTION
CODE_PATCH=NO

## Existing GKD marker

3:// GKD4E_R3_GUARDRAIL_COMMONJS_START
4:const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
6:async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
9:// GKD4E_R3_GUARDRAIL_COMMONJS_END

## High-signal queue/execution contexts


### queue/execution around line 4
SOURCE_PATH=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
============================================================
     1	
     2	
     3	// GKD4E_R3_GUARDRAIL_COMMONJS_START
     4	const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
     5	
     6	async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
     7	  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker

### queue/execution around line 6
SOURCE_PATH=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
============================================================
     1	
     2	
     3	// GKD4E_R3_GUARDRAIL_COMMONJS_START
     4	const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
     5	
     6	async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
     7	  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.

### queue/execution around line 7
SOURCE_PATH=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
============================================================
     1	
     2	
     3	// GKD4E_R3_GUARDRAIL_COMMONJS_START
     4	const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
     5	
     6	async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
     7	  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.
    21	*/

### queue/execution around line 11
     1	
     2	
     3	// GKD4E_R3_GUARDRAIL_COMMONJS_START
     4	const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
     5	
     6	async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
     7	  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.
    21	*/
    22	
    23	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_START
    24	function aiwB6R96R1G2Text(value) {
    25	  return String(value === undefined || value === null ? "" : value).trim();

### queue/execution around line 17
     7	  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.
    21	*/
    22	
    23	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_START
    24	function aiwB6R96R1G2Text(value) {
    25	  return String(value === undefined || value === null ? "" : value).trim();
    26	}
    27	
    28	function aiwB6R96R1G2FirstText(values) {
    29	  for (const value of values) {
    30	    const text = aiwB6R96R1G2Text(value);
    31	    if (text) return text;

### queue/execution around line 18
     8	}
     9	// GKD4E_R3_GUARDRAIL_COMMONJS_END
    10	
    11	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_START
    12	/*
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.
    21	*/
    22	
    23	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_START
    24	function aiwB6R96R1G2Text(value) {
    25	  return String(value === undefined || value === null ? "" : value).trim();
    26	}
    27	
    28	function aiwB6R96R1G2FirstText(values) {
    29	  for (const value of values) {
    30	    const text = aiwB6R96R1G2Text(value);
    31	    if (text) return text;
    32	  }

### queue/execution around line 62
    52	    payload.app_read_payload_jsonb ||
    53	    payload.app_read_payload ||
    54	    payload.request_payload_jsonb ||
    55	    payload.request_payload ||
    56	    payload.payload ||
    57	    payload.body ||
    58	    {}
    59	  );
    60	}
    61	
    62	function aiwB6R96R1G2LooksRuntimePayload(payload) {
    63	  if (!payload || typeof payload !== "object" || Array.isArray(payload)) return false;
    64	
    65	  const appPayload = aiwB6R96R1G2FindAppPayload(payload);
    66	  const statusText = aiwB6R96R1G2FirstText([
    67	    payload.request_status_code,
    68	    payload.status_code,
    69	    payload.status,
    70	    payload.result,
    71	    payload.reason
    72	  ]);
    73	
    74	  return Boolean(
    75	    payload.request_id ||
    76	    payload.runtime_request_id ||

### queue/execution around line 76
    66	  const statusText = aiwB6R96R1G2FirstText([
    67	    payload.request_status_code,
    68	    payload.status_code,
    69	    payload.status,
    70	    payload.result,
    71	    payload.reason
    72	  ]);
    73	
    74	  return Boolean(
    75	    payload.request_id ||
    76	    payload.runtime_request_id ||
    77	    payload.idempotency_key ||
    78	    payload.app_surface_code ||
    79	    payload.model_code ||
    80	    payload.task_domain_code ||
    81	    payload.task_title ||
    82	    payload.task_instruction_ja ||
    83	    payload.app_read_payload_jsonb ||
    84	    appPayload.task_title ||
    85	    appPayload.task_instruction_ja ||
    86	    appPayload.source_request_ref ||
    87	    /REQUESTED|ACCEPTED|accepted|ok/i.test(statusText)
    88	  );
    89	}
    90	

### queue/execution around line 93
    83	    payload.app_read_payload_jsonb ||
    84	    appPayload.task_title ||
    85	    appPayload.task_instruction_ja ||
    86	    appPayload.source_request_ref ||
    87	    /REQUESTED|ACCEPTED|accepted|ok/i.test(statusText)
    88	  );
    89	}
    90	
    91	function aiwB6R96R1G2NormalizeRoleCode(payload, appPayload) {
    92	  const raw = aiwB6R96R1G2FirstText([
    93	    aiwB6R96R1G2Pick(payload, ["role_code", "worker_role_code", "placement_role_code"]),
    94	    aiwB6R96R1G2Pick(appPayload, ["role_code", "worker_role_code", "placement_role_code"]),
    95	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}

### queue/execution around line 94
    84	    appPayload.task_title ||
    85	    appPayload.task_instruction_ja ||
    86	    appPayload.source_request_ref ||
    87	    /REQUESTED|ACCEPTED|accepted|ok/i.test(statusText)
    88	  );
    89	}
    90	
    91	function aiwB6R96R1G2NormalizeRoleCode(payload, appPayload) {
    92	  const raw = aiwB6R96R1G2FirstText([
    93	    aiwB6R96R1G2Pick(payload, ["role_code", "worker_role_code", "placement_role_code"]),
    94	    aiwB6R96R1G2Pick(appPayload, ["role_code", "worker_role_code", "placement_role_code"]),
    95	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	

### queue/execution around line 95
    85	    appPayload.task_instruction_ja ||
    86	    appPayload.source_request_ref ||
    87	    /REQUESTED|ACCEPTED|accepted|ok/i.test(statusText)
    88	  );
    89	}
    90	
    91	function aiwB6R96R1G2NormalizeRoleCode(payload, appPayload) {
    92	  const raw = aiwB6R96R1G2FirstText([
    93	    aiwB6R96R1G2Pick(payload, ["role_code", "worker_role_code", "placement_role_code"]),
    94	    aiwB6R96R1G2Pick(appPayload, ["role_code", "worker_role_code", "placement_role_code"]),
    95	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {

### queue/execution around line 96
    86	    appPayload.source_request_ref ||
    87	    /REQUESTED|ACCEPTED|accepted|ok/i.test(statusText)
    88	  );
    89	}
    90	
    91	function aiwB6R96R1G2NormalizeRoleCode(payload, appPayload) {
    92	  const raw = aiwB6R96R1G2FirstText([
    93	    aiwB6R96R1G2Pick(payload, ["role_code", "worker_role_code", "placement_role_code"]),
    94	    aiwB6R96R1G2Pick(appPayload, ["role_code", "worker_role_code", "placement_role_code"]),
    95	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {
   110	  const model = aiwB6R96R1G2FirstText([

### queue/execution around line 102
    92	  const raw = aiwB6R96R1G2FirstText([
    93	    aiwB6R96R1G2Pick(payload, ["role_code", "worker_role_code", "placement_role_code"]),
    94	    aiwB6R96R1G2Pick(appPayload, ["role_code", "worker_role_code", "placement_role_code"]),
    95	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {
   110	  const model = aiwB6R96R1G2FirstText([
   111	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
   112	    aiwB6R1G2PickSafe(appPayload, ["model_code", "aiworker_model_code"])
   113	  ]).toLowerCase();
   114	
   115	  if (model.includes("byd2-003") || model.includes("hd-r5p") || model.includes("hd-r5")) return "high";
   116	  if (model.includes("byd2-002") || model.includes("hd-r4")) return "standard";

### queue/execution around line 106
    96	    aiwB6R96R1G2Pick(appPayload, ["model_code", "aiworker_model_code"])
    97	  ]).toLowerCase();
    98	
    99	  if (raw.includes("president") || raw.includes("r5p")) return "president";
   100	  if (raw.includes("manager") || raw.includes("r5")) return "manager";
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {
   110	  const model = aiwB6R96R1G2FirstText([
   111	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
   112	    aiwB6R1G2PickSafe(appPayload, ["model_code", "aiworker_model_code"])
   113	  ]).toLowerCase();
   114	
   115	  if (model.includes("byd2-003") || model.includes("hd-r5p") || model.includes("hd-r5")) return "high";
   116	  if (model.includes("byd2-002") || model.includes("hd-r4")) return "standard";
   117	  if (model.includes("byd1-003") || model.includes("hd-r3")) return "standard_basic";
   118	  if (model.includes("hd-r1c") || model.includes("hd-r1a") || model.includes("friend") || model.includes("lover")) return "basic_stable";
   119	  return "standard_basic";
   120	}

### queue/execution around line 111
   101	  if (raw.includes("leader") || raw.includes("r4")) return "leader";
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {
   110	  const model = aiwB6R96R1G2FirstText([
   111	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
   112	    aiwB6R1G2PickSafe(appPayload, ["model_code", "aiworker_model_code"])
   113	  ]).toLowerCase();
   114	
   115	  if (model.includes("byd2-003") || model.includes("hd-r5p") || model.includes("hd-r5")) return "high";
   116	  if (model.includes("byd2-002") || model.includes("hd-r4")) return "standard";
   117	  if (model.includes("byd1-003") || model.includes("hd-r3")) return "standard_basic";
   118	  if (model.includes("hd-r1c") || model.includes("hd-r1a") || model.includes("friend") || model.includes("lover")) return "basic_stable";
   119	  return "standard_basic";
   120	}
   121	
   122	function aiwB6R1G2PickSafe(payload, names) {
   123	  return aiwB6R96R1G2Pick(payload, names);
   124	}
   125	

### queue/execution around line 112
   102	  if (raw.includes("worker") || raw.includes("r3")) return "worker";
   103	  if (raw.includes("helper") || raw.includes("r1")) return "helper";
   104	  if (raw.includes("friend")) return "friend";
   105	  if (raw.includes("lover")) return "lover";
   106	  return "worker";
   107	}
   108	
   109	function aiwB6R96R1G2CapabilityTier(payload, appPayload) {
   110	  const model = aiwB6R96R1G2FirstText([
   111	    aiwB6R96R1G2Pick(payload, ["model_code", "aiworker_model_code"]),
   112	    aiwB6R1G2PickSafe(appPayload, ["model_code", "aiworker_model_code"])
   113	  ]).toLowerCase();
   114	
   115	  if (model.includes("byd2-003") || model.includes("hd-r5p") || model.includes("hd-r5")) return "high";
   116	  if (model.includes("byd2-002") || model.includes("hd-r4")) return "standard";
   117	  if (model.includes("byd1-003") || model.includes("hd-r3")) return "standard_basic";
   118	  if (model.includes("hd-r1c") || model.includes("hd-r1a") || model.includes("friend") || model.includes("lover")) return "basic_stable";
   119	  return "standard_basic";
   120	}
   121	
   122	function aiwB6R1G2PickSafe(payload, names) {
   123	  return aiwB6R96R1G2Pick(payload, names);
   124	}
   125	
   126	function aiwB6R96R1G2ReferenceProfile(tier) {

### queue/execution around line 175
   165	    reference_scope: "standard_limited_cx",
   166	    stability_level: "standard",
   167	    originality_level: "medium_low",
   168	    specialty_level: "medium_low",
   169	    prediction_level: "basic",
   170	    review_depth: "basic"
   171	  };
   172	}
   173	
   174	function aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile) {
   175	  const safeTitle = title || "AIWorkerOS成果物";
   176	  const safeInstruction = instruction || "入力指示が不足しています。";
   177	  const cxNote = "参照範囲: " + referenceProfile.reference_depth + " / " + referenceProfile.reference_scope;
   178	
   179	  if (!instruction) {
   180	    return [
   181	      "# 作業不能理由レポート",
   182	      "",
   183	      "## 結論",
   184	      "現時点では通常成果物を完成できませんが、最低保証として不足情報レポートを返します。",
   185	      "",
   186	      "## 理由",
   187	      "作業指示または成果物条件が不足しています。",
   188	      "",
   189	      "## 不足情報",

### queue/execution around line 268
   258	      "## 対象",
   259	      safeInstruction,
   260	      "",
   261	      "## 作業単位候補",
   262	      "- 入力確認",
   263	      "- 成果物構成作成",
   264	      "- 本文作成",
   265	      "- 品質確認",
   266	      "- 納品準備",
   267	      "",
   268	      "## Workerへの引き渡し",
   269	      "作業目的、期待成果物、制約、確認観点を明示して渡します。",
   270	      "",
   271	      "## 注意点",
   272	      cxNote,
   273	      "",
   274	      "## 次工程",
   275	      "Workerが成果物本文を作成してください。"
   276	    ].join("\n");
   277	  }
   278	
   279	  return [
   280	    "# " + safeTitle,
   281	    "",
   282	    "## 概要",

### queue/execution around line 275
   265	      "- 品質確認",
   266	      "- 納品準備",
   267	      "",
   268	      "## Workerへの引き渡し",
   269	      "作業目的、期待成果物、制約、確認観点を明示して渡します。",
   270	      "",
   271	      "## 注意点",
   272	      cxNote,
   273	      "",
   274	      "## 次工程",
   275	      "Workerが成果物本文を作成してください。"
   276	    ].join("\n");
   277	  }
   278	
   279	  return [
   280	    "# " + safeTitle,
   281	    "",
   282	    "## 概要",
   283	    safeInstruction,
   284	    "",
   285	    "## 本文",
   286	    "依頼内容に基づき、標準的で安定した成果物を作成します。",
   287	    "",
   288	    "### 主要ポイント",
   289	    "- 目的を整理する",

### queue/execution around line 317
   307	  ].join("\n");
   308	}
   309	
   310	function aiwB6R96R1G2BuildRequesterDeliveryPayload(payload) {
   311	  payload = aiwB6R96R1G2Object(payload);
   312	  const appPayload = aiwB6R96R1G2FindAppPayload(payload);
   313	
   314	  const title = aiwB6R96R1G2FirstText([
   315	    aiwB6R96R1G2Pick(payload, ["task_title", "title", "request_title"]),
   316	    aiwB6R96R1G2Pick(appPayload, ["task_title", "title", "request_title"]),
   317	    "AIWorkerOS成果物"
   318	  ]);
   319	
   320	  const instruction = aiwB6R96R1G2FirstText([
   321	    aiwB6R96R1G2Pick(payload, ["task_instruction_ja", "instruction", "prompt", "task_description"]),
   322	    aiwB6R96R1G2Pick(appPayload, ["task_instruction_ja", "instruction", "prompt", "task_description"])
   323	  ]);
   324	
   325	  const role = aiwB6R96R1G2NormalizeRoleCode(payload, appPayload);
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",

### queue/execution around line 367
   357	}
   358	
   359	function aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload) {
   360	  if (!payload || typeof payload !== "object" || Array.isArray(payload)) return payload;
   361	
   362	  const current = aiwB6R96R1G2Object(payload.requester_delivery_payload);
   363	  if (aiwB6R96R1G2Text(current.body_markdown) || aiwB6R96R1G2Text(current.body_text)) {
   364	    return payload;
   365	  }
   366	
   367	  if (!aiwB6R96R1G2LooksRuntimePayload(payload)) return payload;
   368	
   369	  payload.requester_delivery_payload = aiwB6R96R1G2BuildRequesterDeliveryPayload(payload);
   370	  payload.deliverable = payload.requester_delivery_payload;
   371	  return payload;
   372	}
   373	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_END
   374	
   375	function aiwB6R44fPlainObject(value) {
   376	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   377	}
   378	
   379	function aiwB6R44fText(value) {
   380	  return value == null ? "" : String(value).trim();
   381	}

### queue/execution around line 420
   410	    body.source_entity_type ||
   411	    metadata.source_entity_type ||
   412	    source.source_entity_type
   413	  );
   414	
   415	  const sourceEntityId = aiwB6R44fText(
   416	    body.source_entity_id ||
   417	    metadata.source_entity_id ||
   418	    source.source_entity_id ||
   419	    body.request_id ||
   420	    body.runtime_execution_request_id
   421	  );
   422	
   423	  const route = {};
   424	  if (sourceAppRef) route.source_app_ref = sourceAppRef;
   425	  if (sourceRouteCode) route.source_route_code = sourceRouteCode;
   426	  if (sourceScreenCode) route.source_screen_code = sourceScreenCode;
   427	  if (sourceEntityType) route.source_entity_type = sourceEntityType;
   428	  if (sourceEntityId) route.source_entity_id = sourceEntityId;
   429	
   430	  const returnTargetType = aiwB6R44fText(body.return_target_type || metadata.return_target_type || source.return_target_type);
   431	  const returnTargetId = aiwB6R44fText(body.return_target_id || metadata.return_target_id || source.return_target_id);
   432	  const reexecuteTargetType = aiwB6R44fText(body.reexecute_target_type || metadata.reexecute_target_type || source.reexecute_target_type);
   433	  const reexecuteTargetId = aiwB6R44fText(body.reexecute_target_id || metadata.reexecute_target_id || source.reexecute_target_id);
   434	  const contextRestoreType = aiwB6R44fText(body.context_restore_type || metadata.context_restore_type || source.context_restore_type);

### queue/execution around line 432
   422	
   423	  const route = {};
   424	  if (sourceAppRef) route.source_app_ref = sourceAppRef;
   425	  if (sourceRouteCode) route.source_route_code = sourceRouteCode;
   426	  if (sourceScreenCode) route.source_screen_code = sourceScreenCode;
   427	  if (sourceEntityType) route.source_entity_type = sourceEntityType;
   428	  if (sourceEntityId) route.source_entity_id = sourceEntityId;
   429	
   430	  const returnTargetType = aiwB6R44fText(body.return_target_type || metadata.return_target_type || source.return_target_type);
   431	  const returnTargetId = aiwB6R44fText(body.return_target_id || metadata.return_target_id || source.return_target_id);
   432	  const reexecuteTargetType = aiwB6R44fText(body.reexecute_target_type || metadata.reexecute_target_type || source.reexecute_target_type);
   433	  const reexecuteTargetId = aiwB6R44fText(body.reexecute_target_id || metadata.reexecute_target_id || source.reexecute_target_id);
   434	  const contextRestoreType = aiwB6R44fText(body.context_restore_type || metadata.context_restore_type || source.context_restore_type);
   435	  const contextRestoreId = aiwB6R44fText(body.context_restore_id || metadata.context_restore_id || source.context_restore_id);
   436	
   437	  if (returnTargetType) route.return_target_type = returnTargetType;
   438	  if (returnTargetId) route.return_target_id = returnTargetId;
   439	  if (reexecuteTargetType) route.reexecute_target_type = reexecuteTargetType;
   440	  if (reexecuteTargetId) route.reexecute_target_id = reexecuteTargetId;
   441	  if (contextRestoreType) route.context_restore_type = contextRestoreType;
   442	  if (contextRestoreId) route.context_restore_id = contextRestoreId;
   443	
   444	  return route;
   445	}
   446	

### queue/execution around line 433
   423	  const route = {};
   424	  if (sourceAppRef) route.source_app_ref = sourceAppRef;
   425	  if (sourceRouteCode) route.source_route_code = sourceRouteCode;
   426	  if (sourceScreenCode) route.source_screen_code = sourceScreenCode;
   427	  if (sourceEntityType) route.source_entity_type = sourceEntityType;
   428	  if (sourceEntityId) route.source_entity_id = sourceEntityId;
   429	
   430	  const returnTargetType = aiwB6R44fText(body.return_target_type || metadata.return_target_type || source.return_target_type);
   431	  const returnTargetId = aiwB6R44fText(body.return_target_id || metadata.return_target_id || source.return_target_id);
   432	  const reexecuteTargetType = aiwB6R44fText(body.reexecute_target_type || metadata.reexecute_target_type || source.reexecute_target_type);
   433	  const reexecuteTargetId = aiwB6R44fText(body.reexecute_target_id || metadata.reexecute_target_id || source.reexecute_target_id);
   434	  const contextRestoreType = aiwB6R44fText(body.context_restore_type || metadata.context_restore_type || source.context_restore_type);
   435	  const contextRestoreId = aiwB6R44fText(body.context_restore_id || metadata.context_restore_id || source.context_restore_id);
   436	
   437	  if (returnTargetType) route.return_target_type = returnTargetType;
   438	  if (returnTargetId) route.return_target_id = returnTargetId;
   439	  if (reexecuteTargetType) route.reexecute_target_type = reexecuteTargetType;
   440	  if (reexecuteTargetId) route.reexecute_target_id = reexecuteTargetId;
   441	  if (contextRestoreType) route.context_restore_type = contextRestoreType;
   442	  if (contextRestoreId) route.context_restore_id = contextRestoreId;
   443	
   444	  return route;
   445	}
   446	
   447	function aiwB6R44fMergeSourceRouteIntoAppReadPayload(appReadPayload, input) {

### queue/execution around line 439
   429	
   430	  const returnTargetType = aiwB6R44fText(body.return_target_type || metadata.return_target_type || source.return_target_type);
   431	  const returnTargetId = aiwB6R44fText(body.return_target_id || metadata.return_target_id || source.return_target_id);
   432	  const reexecuteTargetType = aiwB6R44fText(body.reexecute_target_type || metadata.reexecute_target_type || source.reexecute_target_type);
   433	  const reexecuteTargetId = aiwB6R44fText(body.reexecute_target_id || metadata.reexecute_target_id || source.reexecute_target_id);
   434	  const contextRestoreType = aiwB6R44fText(body.context_restore_type || metadata.context_restore_type || source.context_restore_type);
   435	  const contextRestoreId = aiwB6R44fText(body.context_restore_id || metadata.context_restore_id || source.context_restore_id);
   436	
   437	  if (returnTargetType) route.return_target_type = returnTargetType;
   438	  if (returnTargetId) route.return_target_id = returnTargetId;
   439	  if (reexecuteTargetType) route.reexecute_target_type = reexecuteTargetType;
   440	  if (reexecuteTargetId) route.reexecute_target_id = reexecuteTargetId;
   441	  if (contextRestoreType) route.context_restore_type = contextRestoreType;
   442	  if (contextRestoreId) route.context_restore_id = contextRestoreId;
   443	
   444	  return route;
   445	}
   446	
   447	function aiwB6R44fMergeSourceRouteIntoAppReadPayload(appReadPayload, input) {
   448	  const base = aiwB6R44fPlainObject(appReadPayload);
   449	  const route = aiwB6R44fExtractSourceRouteMetadata(input);
   450	  if (!route.source_route_code) return base;
   451	  return Object.assign({}, base, {
   452	    source: Object.assign({}, aiwB6R44fPlainObject(base.source), route)
   453	  });

### queue/execution around line 440
   430	  const returnTargetType = aiwB6R44fText(body.return_target_type || metadata.return_target_type || source.return_target_type);
   431	  const returnTargetId = aiwB6R44fText(body.return_target_id || metadata.return_target_id || source.return_target_id);
   432	  const reexecuteTargetType = aiwB6R44fText(body.reexecute_target_type || metadata.reexecute_target_type || source.reexecute_target_type);
   433	  const reexecuteTargetId = aiwB6R44fText(body.reexecute_target_id || metadata.reexecute_target_id || source.reexecute_target_id);
   434	  const contextRestoreType = aiwB6R44fText(body.context_restore_type || metadata.context_restore_type || source.context_restore_type);
   435	  const contextRestoreId = aiwB6R44fText(body.context_restore_id || metadata.context_restore_id || source.context_restore_id);
   436	
   437	  if (returnTargetType) route.return_target_type = returnTargetType;
   438	  if (returnTargetId) route.return_target_id = returnTargetId;
   439	  if (reexecuteTargetType) route.reexecute_target_type = reexecuteTargetType;
   440	  if (reexecuteTargetId) route.reexecute_target_id = reexecuteTargetId;
   441	  if (contextRestoreType) route.context_restore_type = contextRestoreType;
   442	  if (contextRestoreId) route.context_restore_id = contextRestoreId;
   443	
   444	  return route;
   445	}
   446	
   447	function aiwB6R44fMergeSourceRouteIntoAppReadPayload(appReadPayload, input) {
   448	  const base = aiwB6R44fPlainObject(appReadPayload);
   449	  const route = aiwB6R44fExtractSourceRouteMetadata(input);
   450	  if (!route.source_route_code) return base;
   451	  return Object.assign({}, base, {
   452	    source: Object.assign({}, aiwB6R44fPlainObject(base.source), route)
   453	  });
   454	}

### queue/execution around line 486
   476	  if (route.source_route_code) {
   477	    out.app_read_payload_jsonb = aiwB6R44fMergeSourceRouteIntoAppReadPayload(appRead, route);
   478	  }
   479	  return out;
   480	}
   481	
   482	function aiwB6R44fExposeSourceRouteOnRows(value) {
   483	  if (Array.isArray(value)) return value.map(aiwB6R44fExposeSourceRouteOnRow);
   484	  return value;
   485	}
   486	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_END
   487	
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;

### queue/execution around line 488
   478	  }
   479	  return out;
   480	}
   481	
   482	function aiwB6R44fExposeSourceRouteOnRows(value) {
   483	  if (Array.isArray(value)) return value.map(aiwB6R44fExposeSourceRouteOnRow);
   484	  return value;
   485	}
   486	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_END
   487	
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;

### queue/execution around line 492
   482	function aiwB6R44fExposeSourceRouteOnRows(value) {
   483	  if (Array.isArray(value)) return value.map(aiwB6R44fExposeSourceRouteOnRow);
   484	  return value;
   485	}
   486	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_END
   487	
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;
   503	  return false;
   504	}
   505	
   506	function aiwB6R44gR4ExposeSourceRouteRow(row) {

### queue/execution around line 498
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;
   503	  return false;
   504	}
   505	
   506	function aiwB6R44gR4ExposeSourceRouteRow(row) {
   507	  if (!aiwB6R44gR4LooksRuntimeRow(row)) return row;
   508	
   509	  const out = aiwB6R44fExposeSourceRouteOnRow(row);
   510	  const appRead = aiwB6R44gR4PlainObject(out.app_read_payload_jsonb);
   511	  const source = aiwB6R44gR4PlainObject(appRead.source);
   512	

### queue/execution around line 500
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;
   503	  return false;
   504	}
   505	
   506	function aiwB6R44gR4ExposeSourceRouteRow(row) {
   507	  if (!aiwB6R44gR4LooksRuntimeRow(row)) return row;
   508	
   509	  const out = aiwB6R44fExposeSourceRouteOnRow(row);
   510	  const appRead = aiwB6R44gR4PlainObject(out.app_read_payload_jsonb);
   511	  const source = aiwB6R44gR4PlainObject(appRead.source);
   512	
   513	  if (source.source_app_ref && !out.source_app_ref) out.source_app_ref = source.source_app_ref;
   514	  if (source.source_route_code && !out.source_route_code) out.source_route_code = source.source_route_code;

### queue/execution around line 507
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;
   503	  return false;
   504	}
   505	
   506	function aiwB6R44gR4ExposeSourceRouteRow(row) {
   507	  if (!aiwB6R44gR4LooksRuntimeRow(row)) return row;
   508	
   509	  const out = aiwB6R44fExposeSourceRouteOnRow(row);
   510	  const appRead = aiwB6R44gR4PlainObject(out.app_read_payload_jsonb);
   511	  const source = aiwB6R44gR4PlainObject(appRead.source);
   512	
   513	  if (source.source_app_ref && !out.source_app_ref) out.source_app_ref = source.source_app_ref;
   514	  if (source.source_route_code && !out.source_route_code) out.source_route_code = source.source_route_code;
   515	  if (source.source_screen_code && !out.source_screen_code) out.source_screen_code = source.source_screen_code;
   516	  if (source.source_entity_type && !out.source_entity_type) out.source_entity_type = source.source_entity_type;
   517	  if (source.source_entity_id && !out.source_entity_id) out.source_entity_id = source.source_entity_id;
   518	
   519	  return out;
   520	}
   521	

### queue/execution around line 548
   538	  }
   539	  if (Array.isArray(out.items)) {
   540	    out.items = aiwB6R44gR4ExposeSourceRouteRows(out.items);
   541	  }
   542	  if (out.payload && typeof out.payload === "object") {
   543	    out.payload = aiwB6R44gR4ExposeSourceRoutePayload(out.payload);
   544	  }
   545	
   546	  return out;
   547	}
   548	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_END
   549	
   550	
   551	const http = require("http");
   552	const { buildRuntimeBrainContext, renderPromptBrainContext } = require("./brain-context-bridge.js");
   553	const { URL } = require("url");
   554	const { spawnSync } = require("child_process");
   555	const fs = require("fs");
   556	const path = require("path");
   557	
   558	const appRoot = __dirname;
   559	const envFile = path.join(appRoot, ".env.local");
   560	
   561	function loadDotEnv(filePath) {
   562	  if (!fs.existsSync(filePath)) return;

### queue/execution around line 552
   542	  if (out.payload && typeof out.payload === "object") {
   543	    out.payload = aiwB6R44gR4ExposeSourceRoutePayload(out.payload);
   544	  }
   545	
   546	  return out;
   547	}
   548	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_END
   549	
   550	
   551	const http = require("http");
   552	const { buildRuntimeBrainContext, renderPromptBrainContext } = require("./brain-context-bridge.js");
   553	const { URL } = require("url");
   554	const { spawnSync } = require("child_process");
   555	const fs = require("fs");
   556	const path = require("path");
   557	
   558	const appRoot = __dirname;
   559	const envFile = path.join(appRoot, ".env.local");
   560	
   561	function loadDotEnv(filePath) {
   562	  if (!fs.existsSync(filePath)) return;
   563	  const lines = fs.readFileSync(filePath, "utf8").split(/\r?\n/);
   564	  for (const line of lines) {
   565	    if (!line || line.trim().startsWith("#")) continue;
   566	    const idx = line.indexOf("=");

### queue/execution around line 578
   568	    const key = line.slice(0, idx).trim();
   569	    const value = line.slice(idx + 1).trim();
   570	    if (key && process.env[key] === undefined) {
   571	      process.env[key] = value;
   572	    }
   573	  }
   574	}
   575	
   576	loadDotEnv(envFile);
   577	
   578	const port = Number(process.env.PERSONA_AIWORKEROS_PORT || "8787");
   579	const authToken = process.env.PERSONA_AIWORKEROS_AUTH_TOKEN;
   580	if (!authToken) {
   581	  console.error("ERROR: PERSONA_AIWORKEROS_AUTH_TOKEN is required");
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START

### queue/execution around line 579
   569	    const value = line.slice(idx + 1).trim();
   570	    if (key && process.env[key] === undefined) {
   571	      process.env[key] = value;
   572	    }
   573	  }
   574	}
   575	
   576	loadDotEnv(envFile);
   577	
   578	const port = Number(process.env.PERSONA_AIWORKEROS_PORT || "8787");
   579	const authToken = process.env.PERSONA_AIWORKEROS_AUTH_TOKEN;
   580	if (!authToken) {
   581	  console.error("ERROR: PERSONA_AIWORKEROS_AUTH_TOKEN is required");
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {

### queue/execution around line 581
   571	      process.env[key] = value;
   572	    }
   573	  }
   574	}
   575	
   576	loadDotEnv(envFile);
   577	
   578	const port = Number(process.env.PERSONA_AIWORKEROS_PORT || "8787");
   579	const authToken = process.env.PERSONA_AIWORKEROS_AUTH_TOKEN;
   580	if (!authToken) {
   581	  console.error("ERROR: PERSONA_AIWORKEROS_AUTH_TOKEN is required");
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {

### queue/execution around line 592
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	

### queue/execution around line 596
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {

### queue/execution around line 598
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {
   611	      body += chunk;
   612	      if (body.length > 1024 * 1024) {

## High-signal artifact/output contexts

### artifact/output around line 23
    13	  B6R44F:
    14	  Preserve source route metadata from app callers.
    15	  AICompanyManager Workbench uses this to separate:
    16	  - individual_instruction
    17	  - task_ledger_worker
    18	  - president_route_worker
    19	
    20	  This helper is intentionally generic and side-effect-free.
    21	*/
    22	
    23	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_START
    24	function aiwB6R96R1G2Text(value) {
    25	  return String(value === undefined || value === null ? "" : value).trim();
    26	}
    27	
    28	function aiwB6R96R1G2FirstText(values) {
    29	  for (const value of values) {
    30	    const text = aiwB6R96R1G2Text(value);
    31	    if (text) return text;
    32	  }
    33	  return "";
    34	}
    35	
    36	function aiwB6R96R1G2Object(value) {
    37	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};

### artifact/output around line 331
   321	    aiwB6R96R1G2Pick(payload, ["task_instruction_ja", "instruction", "prompt", "task_description"]),
   322	    aiwB6R96R1G2Pick(appPayload, ["task_instruction_ja", "instruction", "prompt", "task_description"])
   323	  ]);
   324	
   325	  const role = aiwB6R96R1G2NormalizeRoleCode(payload, appPayload);
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,

### artifact/output around line 332
   322	    aiwB6R96R1G2Pick(appPayload, ["task_instruction_ja", "instruction", "prompt", "task_description"])
   323	  ]);
   324	
   325	  const role = aiwB6R96R1G2NormalizeRoleCode(payload, appPayload);
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,
   346	      prediction_level: referenceProfile.prediction_level,

### artifact/output around line 333
   323	  ]);
   324	
   325	  const role = aiwB6R96R1G2NormalizeRoleCode(payload, appPayload);
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,
   346	      prediction_level: referenceProfile.prediction_level,
   347	      review_depth: referenceProfile.review_depth

### artifact/output around line 336
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,
   346	      prediction_level: referenceProfile.prediction_level,
   347	      review_depth: referenceProfile.review_depth
   348	    },
   349	    reference_usage_profile: referenceProfile,
   350	    generation_basis: {

### artifact/output around line 339
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,
   346	      prediction_level: referenceProfile.prediction_level,
   347	      review_depth: referenceProfile.review_depth
   348	    },
   349	    reference_usage_profile: referenceProfile,
   350	    generation_basis: {
   351	      role_code: role,
   352	      task_title: title,
   353	      has_instruction: Boolean(instruction),

### artifact/output around line 354
   344	      originality_level: referenceProfile.originality_level,
   345	      specialty_level: referenceProfile.specialty_level,
   346	      prediction_level: referenceProfile.prediction_level,
   347	      review_depth: referenceProfile.review_depth
   348	    },
   349	    reference_usage_profile: referenceProfile,
   350	    generation_basis: {
   351	      role_code: role,
   352	      task_title: title,
   353	      has_instruction: Boolean(instruction),
   354	      generated_by: "AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER"
   355	    }
   356	  };
   357	}
   358	
   359	function aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload) {
   360	  if (!payload || typeof payload !== "object" || Array.isArray(payload)) return payload;
   361	
   362	  const current = aiwB6R96R1G2Object(payload.requester_delivery_payload);
   363	  if (aiwB6R96R1G2Text(current.body_markdown) || aiwB6R96R1G2Text(current.body_text)) {
   364	    return payload;
   365	  }
   366	
   367	  if (!aiwB6R96R1G2LooksRuntimePayload(payload)) return payload;
   368	

### artifact/output around line 370
   360	  if (!payload || typeof payload !== "object" || Array.isArray(payload)) return payload;
   361	
   362	  const current = aiwB6R96R1G2Object(payload.requester_delivery_payload);
   363	  if (aiwB6R96R1G2Text(current.body_markdown) || aiwB6R96R1G2Text(current.body_text)) {
   364	    return payload;
   365	  }
   366	
   367	  if (!aiwB6R96R1G2LooksRuntimePayload(payload)) return payload;
   368	
   369	  payload.requester_delivery_payload = aiwB6R96R1G2BuildRequesterDeliveryPayload(payload);
   370	  payload.deliverable = payload.requester_delivery_payload;
   371	  return payload;
   372	}
   373	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_END
   374	
   375	function aiwB6R44fPlainObject(value) {
   376	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   377	}
   378	
   379	function aiwB6R44fText(value) {
   380	  return value == null ? "" : String(value).trim();
   381	}
   382	
   383	function aiwB6R44fExtractSourceRouteMetadata(input) {
   384	  const body = aiwB6R44fPlainObject(input);

### artifact/output around line 373
   363	  if (aiwB6R96R1G2Text(current.body_markdown) || aiwB6R96R1G2Text(current.body_text)) {
   364	    return payload;
   365	  }
   366	
   367	  if (!aiwB6R96R1G2LooksRuntimePayload(payload)) return payload;
   368	
   369	  payload.requester_delivery_payload = aiwB6R96R1G2BuildRequesterDeliveryPayload(payload);
   370	  payload.deliverable = payload.requester_delivery_payload;
   371	  return payload;
   372	}
   373	// AIW_B6R96R1G2_MINIMUM_DELIVERABLE_HELPER_END
   374	
   375	function aiwB6R44fPlainObject(value) {
   376	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   377	}
   378	
   379	function aiwB6R44fText(value) {
   380	  return value == null ? "" : String(value).trim();
   381	}
   382	
   383	function aiwB6R44fExtractSourceRouteMetadata(input) {
   384	  const body = aiwB6R44fPlainObject(input);
   385	  const metadata = aiwB6R44fPlainObject(body.metadata_jsonb);
   386	  const appRead = aiwB6R44fPlainObject(body.app_read_payload_jsonb);
   387	  const source = aiwB6R44fPlainObject(appRead.source);

### artifact/output around line 773
   763	      limit :'limit'
   764	    ) t;
   765	  `, {
   766	    request_id: query.get("request_id") || "",
   767	    request_code: query.get("request_code") || "",
   768	    limit: normalizeLimit(query.get("limit"))
   769	  });
   770	}
   771	
   772	
   773	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_START
   774	/*
   775	  B6R95R3B-R3:
   776	  Common requester-facing deliverable contract for AIWorkerOS runtime execution.
   777	
   778	  Canon:
   779	  - This is not AICM-specific.
   780	  - AICM is one consumer among multiple requester apps / OSs.
   781	  - AIWorkerOS creates the deliverable body and first summary.
   782	  - Requester apps store summary_text plus deliverable_ref / deliverable_link.
   783	  - Robot performance differences are represented through robot_context and generation_basis.
   784	
   785	  Boundary:
   786	  - No external execution.
   787	  - No PG apply.

### artifact/output around line 776
   766	    request_id: query.get("request_id") || "",
   767	    request_code: query.get("request_code") || "",
   768	    limit: normalizeLimit(query.get("limit"))
   769	  });
   770	}
   771	
   772	
   773	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_START
   774	/*
   775	  B6R95R3B-R3:
   776	  Common requester-facing deliverable contract for AIWorkerOS runtime execution.
   777	
   778	  Canon:
   779	  - This is not AICM-specific.
   780	  - AICM is one consumer among multiple requester apps / OSs.
   781	  - AIWorkerOS creates the deliverable body and first summary.
   782	  - Requester apps store summary_text plus deliverable_ref / deliverable_link.
   783	  - Robot performance differences are represented through robot_context and generation_basis.
   784	
   785	  Boundary:
   786	  - No external execution.
   787	  - No PG apply.
   788	  - No destructive action.
   789	  - No AICM-side change in this patch.
   790	  - No CX22073JW access-control change in this patch.

### artifact/output around line 781
   771	
   772	
   773	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_START
   774	/*
   775	  B6R95R3B-R3:
   776	  Common requester-facing deliverable contract for AIWorkerOS runtime execution.
   777	
   778	  Canon:
   779	  - This is not AICM-specific.
   780	  - AICM is one consumer among multiple requester apps / OSs.
   781	  - AIWorkerOS creates the deliverable body and first summary.
   782	  - Requester apps store summary_text plus deliverable_ref / deliverable_link.
   783	  - Robot performance differences are represented through robot_context and generation_basis.
   784	
   785	  Boundary:
   786	  - No external execution.
   787	  - No PG apply.
   788	  - No destructive action.
   789	  - No AICM-side change in this patch.
   790	  - No CX22073JW access-control change in this patch.
   791	*/
   792	function aiwB6R95R3R3Text(value) {
   793	  return String(value ?? "").replace(/\r\n/g, "\n").trim();
   794	}
   795	

### artifact/output around line 782
   772	
   773	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_START
   774	/*
   775	  B6R95R3B-R3:
   776	  Common requester-facing deliverable contract for AIWorkerOS runtime execution.
   777	
   778	  Canon:
   779	  - This is not AICM-specific.
   780	  - AICM is one consumer among multiple requester apps / OSs.
   781	  - AIWorkerOS creates the deliverable body and first summary.
   782	  - Requester apps store summary_text plus deliverable_ref / deliverable_link.
   783	  - Robot performance differences are represented through robot_context and generation_basis.
   784	
   785	  Boundary:
   786	  - No external execution.
   787	  - No PG apply.
   788	  - No destructive action.
   789	  - No AICM-side change in this patch.
   790	  - No CX22073JW access-control change in this patch.
   791	*/
   792	function aiwB6R95R3R3Text(value) {
   793	  return String(value ?? "").replace(/\r\n/g, "\n").trim();
   794	}
   795	
   796	function aiwB6R95R3R3OneLine(value, fallback) {

### artifact/output around line 811
   801	function aiwB6R95R3R3Clip(value, maxLen) {
   802	  const text = aiwB6R95R3R3Text(value);
   803	  if (text.length <= maxLen) return text;
   804	  return `${text.slice(0, maxLen)}…`;
   805	}
   806	
   807	function aiwB6R95R3R3Lines(items) {
   808	  return items.filter((value) => value !== null && value !== undefined && String(value).trim() !== "").join("\n");
   809	}
   810	
   811	function aiwB6R95R3R3BuildRequesterFacingDeliverableBaseB6R95R3Z24(payload, sourceRouteCode) {
   812	  const requesterAppRef = aiwB6R95R3R3OneLine(payload.source_app_ref, "HTTP_LOCAL");
   813	  const sourceRequestRef = aiwB6R95R3R3OneLine(payload.source_request_ref, "");
   814	  const appSurfaceCode = aiwB6R95R3R3OneLine(payload.app_surface_code, "unknown_app_surface");
   815	  const routeCode = aiwB6R95R3R3OneLine(sourceRouteCode, "unspecified_route");
   816	  const taskTitle = aiwB6R95R3R3OneLine(payload.task_title, "AIWorkerOS成果物");
   817	  const taskInstruction = aiwB6R95R3R3Text(payload.task_instruction_ja);
   818	  const modelCode = aiwB6R95R3R3OneLine(payload.model_code, "unknown_model");
   819	  const roleLayerCode = aiwB6R95R3R3OneLine(payload.role_layer_code || payload.roleLayerCode, "runtime_resolved_by_aiworker");
   820	  const seriesCode = aiwB6R95R3R3OneLine(payload.series_code || payload.seriesCode, "runtime_resolved_by_aiworker");
   821	  const capabilityProfileCode = aiwB6R95R3R3OneLine(payload.capability_profile_code || payload.capabilityProfileCode, "runtime_resolved_by_aiworker");
   822	  const taskDomainCode = aiwB6R95R3R3OneLine(payload.task_domain_code, "unknown_domain");
   823	  const cxDepthCode = aiwB6R95R3R3OneLine(payload.cx_reference_depth_code || payload.cxReferenceDepthCode, "runtime_policy_resolved");
   824	  const cxBreadthCode = aiwB6R95R3R3OneLine(payload.cx_reference_breadth_code || payload.cxReferenceBreadthCode, "runtime_policy_resolved");
   825	

### artifact/output around line 848
   838	    source_request_ref: sourceRequestRef,
   839	    source_route_code: routeCode,
   840	    robot_trait_basis: "model_code / role_layer_code / series_code / capability_profile_code are carried as generation basis; deeper trait resolution belongs to AIWorkerOS robot profile logic.",
   841	    cx_depth_basis: cxDepthCode,
   842	    cx_breadth_basis: cxBreadthCode,
   843	    cx_reference_boundary: "CX22073JW is robot brain/reference data. Access-control remains AIWorkerOS-side, not requester-app-side.",
   844	    safety_boundary: "internal_only_no_external_execution_no_pg_apply_no_destructive_action"
   845	  };
   846	
   847	  const outputTitle = `${taskTitle} 成果物`;
   848	  const deliverablePackage = aiwB6R95R3D1BuildZipPackageMeta(requesterAppRef, taskTitle);
   849	  const summaryText = aiwB6R95R3R3Clip(
   850	    `AIWorkerOSが${modelCode}を成果物生成主体として、${taskTitle}の一次成果物と一次サマリを作成しました。依頼元アプリはこのsummary_textとdeliverable_ref/linkを保存してレビューに利用できます。`,
   851	    700
   852	  );
   853	
   854	  const qualityNotes = aiwB6R95R3R3Lines([
   855	    "AIWorkerOS側で生成した一次成果物です。",
   856	    `設定ロボット: ${modelCode}`,
   857	    `役割レイヤー: ${roleLayerCode}`,
   858	    `タスク領域: ${taskDomainCode}`,
   859	    `CX参照深度: ${cxDepthCode}`,
   860	    `CX参照広さ: ${cxBreadthCode}`,
   861	    "今後の生成エンジン深化では、同じ契約のままロボット特性・CX参照範囲・能力差を本文品質へさらに反映します。"
   862	  ]);

### artifact/output around line 850
   840	    robot_trait_basis: "model_code / role_layer_code / series_code / capability_profile_code are carried as generation basis; deeper trait resolution belongs to AIWorkerOS robot profile logic.",
   841	    cx_depth_basis: cxDepthCode,
   842	    cx_breadth_basis: cxBreadthCode,
   843	    cx_reference_boundary: "CX22073JW is robot brain/reference data. Access-control remains AIWorkerOS-side, not requester-app-side.",
   844	    safety_boundary: "internal_only_no_external_execution_no_pg_apply_no_destructive_action"
   845	  };
   846	
   847	  const outputTitle = `${taskTitle} 成果物`;
   848	  const deliverablePackage = aiwB6R95R3D1BuildZipPackageMeta(requesterAppRef, taskTitle);
   849	  const summaryText = aiwB6R95R3R3Clip(
   850	    `AIWorkerOSが${modelCode}を成果物生成主体として、${taskTitle}の一次成果物と一次サマリを作成しました。依頼元アプリはこのsummary_textとdeliverable_ref/linkを保存してレビューに利用できます。`,
   851	    700
   852	  );
   853	
   854	  const qualityNotes = aiwB6R95R3R3Lines([
   855	    "AIWorkerOS側で生成した一次成果物です。",
   856	    `設定ロボット: ${modelCode}`,
   857	    `役割レイヤー: ${roleLayerCode}`,
   858	    `タスク領域: ${taskDomainCode}`,
   859	    `CX参照深度: ${cxDepthCode}`,
   860	    `CX参照広さ: ${cxBreadthCode}`,
   861	    "今後の生成エンジン深化では、同じ契約のままロボット特性・CX参照範囲・能力差を本文品質へさらに反映します。"
   862	  ]);
   863	
   864	  const unresolvedIssues = aiwB6R95R3R3Lines([

### artifact/output around line 870
   860	    `CX参照広さ: ${cxBreadthCode}`,
   861	    "今後の生成エンジン深化では、同じ契約のままロボット特性・CX参照範囲・能力差を本文品質へさらに反映します。"
   862	  ]);
   863	
   864	  const unresolvedIssues = aiwB6R95R3R3Lines([
   865	    "この段階では外部実行、PG apply、破壊的操作は行っていません。",
   866	    "追加調査・DB変更・実装反映が必要な場合は、依頼元アプリ側の承認/差し戻し工程で判断してください。"
   867	  ]);
   868	
   869	  const nextSteps = aiwB6R95R3R3Lines([
   870	    "依頼元アプリでsummary_textとdeliverable_ref/linkを保存する。",
   871	    "レビュー画面から成果物本文へ辿れるようにする。",
   872	    "差し戻し時は追加条件をAIWorkerOSへ再依頼する。"
   873	  ]);
   874	
   875	  const bodyMarkdown = aiwB6R95R3R3Lines([
   876	    `# ${taskTitle}`,
   877	    "",
   878	    "## 1. 成果物サマリ",
   879	    summaryText,
   880	    "",
   881	    "## 2. 生成主体",
   882	    `- generation_owner: AIWorkerOS`,
   883	    `- requester_app_ref: ${requesterAppRef}`,
   884	    `- source_request_ref: ${sourceRequestRef || "未指定"}`,

### artifact/output around line 917
   907	    nextSteps,
   908	    "",
   909	    "## 8. 安全境界",
   910	    "- external_execution_performed_flag=false",
   911	    "- pg_apply_performed_flag=false",
   912	    "- destructive_action_performed_flag=false",
   913	    "- CX22073JW brain access control is AIWorkerOS-side responsibility",
   914	    ""
   915	  ]);
   916	
   917	  const generatedArtifacts = [
   918	    {
   919	      kind: "main_deliverable",
   920	      title: outputTitle,
   921	      file_name: "01_main_deliverable.md",
   922	      body_markdown: bodyMarkdown
   923	    },
   924	    {
   925	      kind: "quality_notes",
   926	      title: "品質メモ",
   927	      file_name: "90_quality_notes.md",
   928	      body_markdown: qualityNotes
   929	    },
   930	    {
   931	      kind: "unresolved_issues",

### artifact/output around line 919
   909	    "## 8. 安全境界",
   910	    "- external_execution_performed_flag=false",
   911	    "- pg_apply_performed_flag=false",
   912	    "- destructive_action_performed_flag=false",
   913	    "- CX22073JW brain access control is AIWorkerOS-side responsibility",
   914	    ""
   915	  ]);
   916	
   917	  const generatedArtifacts = [
   918	    {
   919	      kind: "main_deliverable",
   920	      title: outputTitle,
   921	      file_name: "01_main_deliverable.md",
   922	      body_markdown: bodyMarkdown
   923	    },
   924	    {
   925	      kind: "quality_notes",
   926	      title: "品質メモ",
   927	      file_name: "90_quality_notes.md",
   928	      body_markdown: qualityNotes
   929	    },
   930	    {
   931	      kind: "unresolved_issues",
   932	      title: "未解決事項",
   933	      file_name: "91_unresolved_issues.md",

### artifact/output around line 921
   911	    "- pg_apply_performed_flag=false",
   912	    "- destructive_action_performed_flag=false",
   913	    "- CX22073JW brain access control is AIWorkerOS-side responsibility",
   914	    ""
   915	  ]);
   916	
   917	  const generatedArtifacts = [
   918	    {
   919	      kind: "main_deliverable",
   920	      title: outputTitle,
   921	      file_name: "01_main_deliverable.md",
   922	      body_markdown: bodyMarkdown
   923	    },
   924	    {
   925	      kind: "quality_notes",
   926	      title: "品質メモ",
   927	      file_name: "90_quality_notes.md",
   928	      body_markdown: qualityNotes
   929	    },
   930	    {
   931	      kind: "unresolved_issues",
   932	      title: "未解決事項",
   933	      file_name: "91_unresolved_issues.md",
   934	      body_markdown: unresolvedIssues
   935	    },

### artifact/output around line 945
   935	    },
   936	    {
   937	      kind: "next_steps",
   938	      title: "次工程",
   939	      file_name: "92_next_steps.md",
   940	      body_markdown: nextSteps
   941	    }
   942	  ];
   943	  const outputPayload = {
   944	    contract_version: "B6R95R3B-R3",
   945	    contract_name: "aiworkeros_common_requester_deliverable_contract",
   946	    deliverable_kind: "document",
   947	    body_format: "markdown",
   948	    deliverable_package: deliverablePackage,
   949	    deliverable_link: deliverablePackage.zip_link,
   950	    generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   951	    requester_app_ref: requesterAppRef,
   952	    source_request_ref: sourceRequestRef,
   953	    source_route_code: routeCode,
   954	    app_surface_code: appSurfaceCode,
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,

### artifact/output around line 946
   936	    {
   937	      kind: "next_steps",
   938	      title: "次工程",
   939	      file_name: "92_next_steps.md",
   940	      body_markdown: nextSteps
   941	    }
   942	  ];
   943	  const outputPayload = {
   944	    contract_version: "B6R95R3B-R3",
   945	    contract_name: "aiworkeros_common_requester_deliverable_contract",
   946	    deliverable_kind: "document",
   947	    body_format: "markdown",
   948	    deliverable_package: deliverablePackage,
   949	    deliverable_link: deliverablePackage.zip_link,
   950	    generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   951	    requester_app_ref: requesterAppRef,
   952	    source_request_ref: sourceRequestRef,
   953	    source_route_code: routeCode,
   954	    app_surface_code: appSurfaceCode,
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,

### artifact/output around line 948
   938	      title: "次工程",
   939	      file_name: "92_next_steps.md",
   940	      body_markdown: nextSteps
   941	    }
   942	  ];
   943	  const outputPayload = {
   944	    contract_version: "B6R95R3B-R3",
   945	    contract_name: "aiworkeros_common_requester_deliverable_contract",
   946	    deliverable_kind: "document",
   947	    body_format: "markdown",
   948	    deliverable_package: deliverablePackage,
   949	    deliverable_link: deliverablePackage.zip_link,
   950	    generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   951	    requester_app_ref: requesterAppRef,
   952	    source_request_ref: sourceRequestRef,
   953	    source_route_code: routeCode,
   954	    app_surface_code: appSurfaceCode,
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false

### artifact/output around line 949
   939	      file_name: "92_next_steps.md",
   940	      body_markdown: nextSteps
   941	    }
   942	  ];
   943	  const outputPayload = {
   944	    contract_version: "B6R95R3B-R3",
   945	    contract_name: "aiworkeros_common_requester_deliverable_contract",
   946	    deliverable_kind: "document",
   947	    body_format: "markdown",
   948	    deliverable_package: deliverablePackage,
   949	    deliverable_link: deliverablePackage.zip_link,
   950	    generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   951	    requester_app_ref: requesterAppRef,
   952	    source_request_ref: sourceRequestRef,
   953	    source_route_code: routeCode,
   954	    app_surface_code: appSurfaceCode,
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };

### artifact/output around line 950
   940	      body_markdown: nextSteps
   941	    }
   942	  ];
   943	  const outputPayload = {
   944	    contract_version: "B6R95R3B-R3",
   945	    contract_name: "aiworkeros_common_requester_deliverable_contract",
   946	    deliverable_kind: "document",
   947	    body_format: "markdown",
   948	    deliverable_package: deliverablePackage,
   949	    deliverable_link: deliverablePackage.zip_link,
   950	    generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   951	    requester_app_ref: requesterAppRef,
   952	    source_request_ref: sourceRequestRef,
   953	    source_route_code: routeCode,
   954	    app_surface_code: appSurfaceCode,
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	

### artifact/output around line 965
   955	    robot_context: robotContext,
   956	    generation_basis: generationBasis,
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	
   965	  const artifacts = [
   966	    {
   967	      artifact_kind_code: "markdown",
   968	      artifact_title_ja: outputTitle,
   969	      body_format: "markdown",
   970	      deliverable_package: deliverablePackage,
   971	      deliverable_link: deliverablePackage.zip_link,
   972	      generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   973	      body_markdown: bodyMarkdown,
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,

### artifact/output around line 967
   957	    quality_notes: qualityNotes,
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	
   965	  const artifacts = [
   966	    {
   967	      artifact_kind_code: "markdown",
   968	      artifact_title_ja: outputTitle,
   969	      body_format: "markdown",
   970	      deliverable_package: deliverablePackage,
   971	      deliverable_link: deliverablePackage.zip_link,
   972	      generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   973	      body_markdown: bodyMarkdown,
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,
   980	      contract_version: "B6R95R3B-R3"
   981	    }

### artifact/output around line 968
   958	    unresolved_issues: unresolvedIssues,
   959	    next_steps: nextSteps,
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	
   965	  const artifacts = [
   966	    {
   967	      artifact_kind_code: "markdown",
   968	      artifact_title_ja: outputTitle,
   969	      body_format: "markdown",
   970	      deliverable_package: deliverablePackage,
   971	      deliverable_link: deliverablePackage.zip_link,
   972	      generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   973	      body_markdown: bodyMarkdown,
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,
   980	      contract_version: "B6R95R3B-R3"
   981	    }
   982	  ];

### artifact/output around line 970
   960	    external_execution_performed_flag: false,
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	
   965	  const artifacts = [
   966	    {
   967	      artifact_kind_code: "markdown",
   968	      artifact_title_ja: outputTitle,
   969	      body_format: "markdown",
   970	      deliverable_package: deliverablePackage,
   971	      deliverable_link: deliverablePackage.zip_link,
   972	      generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   973	      body_markdown: bodyMarkdown,
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,
   980	      contract_version: "B6R95R3B-R3"
   981	    }
   982	  ];
   983	
   984	  return {

### artifact/output around line 971
   961	    pg_apply_performed_flag: false,
   962	    destructive_action_performed_flag: false
   963	  };
   964	
   965	  const artifacts = [
   966	    {
   967	      artifact_kind_code: "markdown",
   968	      artifact_title_ja: outputTitle,
   969	      body_format: "markdown",
   970	      deliverable_package: deliverablePackage,
   971	      deliverable_link: deliverablePackage.zip_link,
   972	      generated_artifacts: generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
   973	      body_markdown: bodyMarkdown,
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,
   980	      contract_version: "B6R95R3B-R3"
   981	    }
   982	  ];
   983	
   984	  return {
   985	    outputTitle,

## High-signal response contexts

### response around line 128
   118	  if (model.includes("hd-r1c") || model.includes("hd-r1a") || model.includes("friend") || model.includes("lover")) return "basic_stable";
   119	  return "standard_basic";
   120	}
   121	
   122	function aiwB6R1G2PickSafe(payload, names) {
   123	  return aiwB6R96R1G2Pick(payload, names);
   124	}
   125	
   126	function aiwB6R96R1G2ReferenceProfile(tier) {
   127	  if (tier === "high") {
   128	    return {
   129	      reference_depth: "deep",
   130	      reference_scope: "broad_verified_cx",
   131	      stability_level: "high",
   132	      originality_level: "high",
   133	      specialty_level: "high",
   134	      prediction_level: "high",
   135	      review_depth: "advanced"
   136	    };
   137	  }
   138	
   139	  if (tier === "standard") {
   140	    return {
   141	      reference_depth: "standard",
   142	      reference_scope: "standard_cx",

### response around line 140
   130	      reference_scope: "broad_verified_cx",
   131	      stability_level: "high",
   132	      originality_level: "high",
   133	      specialty_level: "high",
   134	      prediction_level: "high",
   135	      review_depth: "advanced"
   136	    };
   137	  }
   138	
   139	  if (tier === "standard") {
   140	    return {
   141	      reference_depth: "standard",
   142	      reference_scope: "standard_cx",
   143	      stability_level: "standard",
   144	      originality_level: "medium",
   145	      specialty_level: "medium",
   146	      prediction_level: "medium",
   147	      review_depth: "standard"
   148	    };
   149	  }
   150	
   151	  if (tier === "basic_stable") {
   152	    return {
   153	      reference_depth: "lightweight",
   154	      reference_scope: "lightweight_reference_or_legacy_seed",

### response around line 152
   142	      reference_scope: "standard_cx",
   143	      stability_level: "standard",
   144	      originality_level: "medium",
   145	      specialty_level: "medium",
   146	      prediction_level: "medium",
   147	      review_depth: "standard"
   148	    };
   149	  }
   150	
   151	  if (tier === "basic_stable") {
   152	    return {
   153	      reference_depth: "lightweight",
   154	      reference_scope: "lightweight_reference_or_legacy_seed",
   155	      stability_level: "standard",
   156	      originality_level: "low",
   157	      specialty_level: "low",
   158	      prediction_level: "basic",
   159	      review_depth: "basic"
   160	    };
   161	  }
   162	
   163	  return {
   164	    reference_depth: "standard_light",
   165	    reference_scope: "standard_limited_cx",
   166	    stability_level: "standard",

### response around line 163
   153	      reference_depth: "lightweight",
   154	      reference_scope: "lightweight_reference_or_legacy_seed",
   155	      stability_level: "standard",
   156	      originality_level: "low",
   157	      specialty_level: "low",
   158	      prediction_level: "basic",
   159	      review_depth: "basic"
   160	    };
   161	  }
   162	
   163	  return {
   164	    reference_depth: "standard_light",
   165	    reference_scope: "standard_limited_cx",
   166	    stability_level: "standard",
   167	    originality_level: "medium_low",
   168	    specialty_level: "medium_low",
   169	    prediction_level: "basic",
   170	    review_depth: "basic"
   171	  };
   172	}
   173	
   174	function aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile) {
   175	  const safeTitle = title || "AIWorkerOS成果物";
   176	  const safeInstruction = instruction || "入力指示が不足しています。";
   177	  const cxNote = "参照範囲: " + referenceProfile.reference_depth + " / " + referenceProfile.reference_scope;

### response around line 330
   320	  const instruction = aiwB6R96R1G2FirstText([
   321	    aiwB6R96R1G2Pick(payload, ["task_instruction_ja", "instruction", "prompt", "task_description"]),
   322	    aiwB6R96R1G2Pick(appPayload, ["task_instruction_ja", "instruction", "prompt", "task_description"])
   323	  ]);
   324	
   325	  const role = aiwB6R96R1G2NormalizeRoleCode(payload, appPayload);
   326	  const tier = aiwB6R96R1G2CapabilityTier(payload, appPayload);
   327	  const referenceProfile = aiwB6R96R1G2ReferenceProfile(tier);
   328	  const body = aiwB6R96R1G2BuildBody(role, title, instruction, referenceProfile);
   329	
   330	  return {
   331	    contract_version: "requester_deliverable_v1",
   332	    deliverable_title: title,
   333	    deliverable_kind: role === "president" ? "policy_proposal" : role === "manager" ? "major_breakdown" : role === "leader" ? "task_decomposition" : "document",
   334	    body_format: "markdown",
   335	    body_markdown: body,
   336	    summary_text: role + " role produced a stable minimum deliverable.",
   337	    limitations_text: "Performance differences are controlled by CX reference permission and capability profile. Low performance still returns stable output.",
   338	    unresolved_issues_text: instruction ? "" : "Task instruction is missing or insufficient.",
   339	    next_steps_text: "Review the deliverable and provide additional constraints if deeper specialty or originality is required.",
   340	    minimum_guarantee_status: body ? "satisfied" : "blocking_report",
   341	    performance_profile: {
   342	      capability_tier: tier,
   343	      stability_level: referenceProfile.stability_level,
   344	      originality_level: referenceProfile.originality_level,

### response around line 488
   478	  }
   479	  return out;
   480	}
   481	
   482	function aiwB6R44fExposeSourceRouteOnRows(value) {
   483	  if (Array.isArray(value)) return value.map(aiwB6R44fExposeSourceRouteOnRow);
   484	  return value;
   485	}
   486	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_END
   487	
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;

### response around line 491
   481	
   482	function aiwB6R44fExposeSourceRouteOnRows(value) {
   483	  if (Array.isArray(value)) return value.map(aiwB6R44fExposeSourceRouteOnRow);
   484	  return value;
   485	}
   486	// AIWORKEROS_V10L_C2G_B6R44F_SOURCE_ROUTE_METADATA_END
   487	
   488	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_START
   489	/*
   490	  B6R44G-R4:
   491	  SendJson boundary wrapper.
   492	  Exposes source route metadata only for runtime-shaped rows.
   493	*/
   494	function aiwB6R44gR4PlainObject(value) {
   495	  return value && typeof value === "object" && !Array.isArray(value) ? value : {};
   496	}
   497	
   498	function aiwB6R44gR4LooksRuntimeRow(row) {
   499	  if (!row || typeof row !== "object" || Array.isArray(row)) return false;
   500	  if (row.request_id || row.runtime_execution_request_id || row.request_code) return true;
   501	  if (row.request_status_code || row.output_status_code || row.delivery_status_code) return true;
   502	  if (row.app_surface_code || row.app_read_payload_jsonb) return true;
   503	  return false;
   504	}
   505	

### response around line 548
   538	  }
   539	  if (Array.isArray(out.items)) {
   540	    out.items = aiwB6R44gR4ExposeSourceRouteRows(out.items);
   541	  }
   542	  if (out.payload && typeof out.payload === "object") {
   543	    out.payload = aiwB6R44gR4ExposeSourceRoutePayload(out.payload);
   544	  }
   545	
   546	  return out;
   547	}
   548	// AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_SOURCE_ROUTE_HELPER_END
   549	
   550	
   551	const http = require("http");
   552	const { buildRuntimeBrainContext, renderPromptBrainContext } = require("./brain-context-bridge.js");
   553	const { URL } = require("url");
   554	const { spawnSync } = require("child_process");
   555	const fs = require("fs");
   556	const path = require("path");
   557	
   558	const appRoot = __dirname;
   559	const envFile = path.join(appRoot, ".env.local");
   560	
   561	function loadDotEnv(filePath) {
   562	  if (!fs.existsSync(filePath)) return;

### response around line 591
   581	  console.error("ERROR: PERSONA_AIWORKEROS_AUTH_TOKEN is required");
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}

### response around line 592
   582	  process.exit(1);
   583	}
   584	const databaseUrl = process.env.PERSONA_DATABASE_URL;
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	

### response around line 595
   585	
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";

### response around line 596
   586	if (!databaseUrl) {
   587	  console.error("ERROR: PERSONA_DATABASE_URL is not set");
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {

### response around line 598
   588	  process.exit(1);
   589	}
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {
   611	      body += chunk;
   612	      if (body.length > 1024 * 1024) {

### response around line 600
   590	
   591	function sendJson(res, status, payload) {
   592	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_START
   593	  try {
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {
   611	      body += chunk;
   612	      if (body.length > 1024 * 1024) {
   613	        reject(new Error("Request body too large"));
   614	        req.destroy();

### response around line 604
   594	    payload = aiwB6R44gR4ExposeSourceRoutePayload(payload);
   595	  } catch (_b6r44gR4Error) {
   596	    // Keep sendJson stable for non-runtime payloads.
   597	  }
   598	  // AIWORKEROS_V10L_C2G_B6R44G_R4_SENDJSON_BODY_WRAP_END
   599	
   600	  res.writeHead(status, {
   601	    "Content-Type": "application/json; charset=utf-8",
   602	    "Cache-Control": "no-store"
   603	  });
   604	  res.end(JSON.stringify(aiwB6R96R1G2EnsureRequesterDeliveryPayload(payload, null, 2)));
   605	}
   606	
   607	function readBody(req) {
   608	  return new Promise((resolve, reject) => {
   609	    let body = "";
   610	    req.on("data", chunk => {
   611	      body += chunk;
   612	      if (body.length > 1024 * 1024) {
   613	        reject(new Error("Request body too large"));
   614	        req.destroy();
   615	      }
   616	    });
   617	    req.on("end", () => resolve(body));
   618	    req.on("error", reject);

### response around line 675
   665	    err.stdout = result.stdout;
   666	    err.status = result.status;
   667	    throw err;
   668	  }
   669	
   670	  const text = (result.stdout || "").trim();
   671	  if (!text) return null;
   672	
   673	  try {
   674	    return JSON.parse(text);
   675	  } catch (e) {
   676	    throw new Error(`Failed to parse DB JSON: ${text}`);
   677	  }
   678	}
   679	
   680	function endpointReady() {
   681	  return psqlJson(`
   682	    select coalesce(to_jsonb(t), '{}'::jsonb)::text
   683	    from (
   684	      select *
   685	      from aiworker.vw_app_aiworker_runtime_execution_endpoint_ready_v1
   686	    ) t;
   687	  `);
   688	}
   689	

### response around line 676
   666	    err.status = result.status;
   667	    throw err;
   668	  }
   669	
   670	  const text = (result.stdout || "").trim();
   671	  if (!text) return null;
   672	
   673	  try {
   674	    return JSON.parse(text);
   675	  } catch (e) {
   676	    throw new Error(`Failed to parse DB JSON: ${text}`);
   677	  }
   678	}
   679	
   680	function endpointReady() {
   681	  return psqlJson(`
   682	    select coalesce(to_jsonb(t), '{}'::jsonb)::text
   683	    from (
   684	      select *
   685	      from aiworker.vw_app_aiworker_runtime_execution_endpoint_ready_v1
   686	    ) t;
   687	  `);
   688	}
   689	
   690	function apiContracts() {

### response around line 984
   974	      summary_text: summaryText,
   975	      quality_notes: qualityNotes,
   976	      unresolved_issues: unresolvedIssues,
   977	      next_steps: nextSteps,
   978	      robot_context: robotContext,
   979	      generation_basis: generationBasis,
   980	      contract_version: "B6R95R3B-R3"
   981	    }
   982	  ];
   983	
   984	  return {
   985	    outputTitle,
   986	    bodyMarkdown,
   987	    summaryText,
   988	    qualityNotes,
   989	    unresolvedIssues,
   990	    nextSteps,
   991	    robotContext,
   992	    generationBasis,
   993	    deliverablePackage,
   994	    generatedArtifacts,
   995	    outputPayload,
   996	    artifacts
   997	  };
   998	}

### response around line 1481
  1471	
  1472	  return out;
  1473	}
  1474	
  1475	function aiwB6R98R3BMaybeParseJsonText(text) {
  1476	  const raw = aiwB6R98R3BSourceText(text).trim();
  1477	  if (!raw) return null;
  1478	  if (!raw.startsWith("{") && !raw.startsWith("[")) return null;
  1479	  try {
  1480	    return JSON.parse(raw);
  1481	  } catch (_) {
  1482	    return null;
  1483	  }
  1484	}
  1485	
  1486	function aiwB6R98R3BCollectTextSources(payload) {
  1487	  const sources = [];
  1488	  const directKeys = [
  1489	    "reference_files_text",
  1490	    "supplemental_materials_text",
  1491	    "applicable_rules_text",
  1492	    "source_file_path",
  1493	    "source_file_paths",
  1494	    "source_data_path",
  1495	    "source_data_paths",

### response around line 1723
  1713	  const maxFiles = Math.max(1, Math.min(10, Number(process.env.AIWORKEROS_SOURCE_FILE_MAX_FILES || "5") || 5));
  1714	  const maxBytes = Math.max(1024, Math.min(2 * 1024 * 1024, Number(process.env.AIWORKEROS_SOURCE_FILE_MAX_BYTES || "2097152") || 2097152));
  1715	  const maxTotalChars = Math.max(4000, Math.min(120000, Number(process.env.AIWORKEROS_SOURCE_FILE_MAX_TOTAL_CHARS || "60000") || 60000));
  1716	
  1717	  const rows = [];
  1718	  const rejected = [];
  1719	  let totalChars = 0;
  1720	
  1721	  for (const candidate of candidates) {
  1722	    if (rows.length >= maxFiles) {
  1723	      rejected.push({ path: candidate, reason: "max_files_exceeded" });
  1724	      continue;
  1725	    }
  1726	
  1727	    const normalized = aiwB6R98R3BNormalizeCandidatePath(candidate);
  1728	    const absPath = path.resolve(normalized);
  1729	
  1730	    try {
  1731	      if (!aiwB6R98R3BIsUnderAllowedRoot(absPath)) {
  1732	        rejected.push({ path: candidate, reason: "outside_allowed_roots" });
  1733	        continue;
  1734	      }
  1735	
  1736	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_START */
  1737	      const aiwB6R97R67MaterialType = aiwB6R97R66DetectSourceMaterialType(absPath);

### response around line 1732
  1722	    if (rows.length >= maxFiles) {
  1723	      rejected.push({ path: candidate, reason: "max_files_exceeded" });
  1724	      continue;
  1725	    }
  1726	
  1727	    const normalized = aiwB6R98R3BNormalizeCandidatePath(candidate);
  1728	    const absPath = path.resolve(normalized);
  1729	
  1730	    try {
  1731	      if (!aiwB6R98R3BIsUnderAllowedRoot(absPath)) {
  1732	        rejected.push({ path: candidate, reason: "outside_allowed_roots" });
  1733	        continue;
  1734	      }
  1735	
  1736	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_START */
  1737	      const aiwB6R97R67MaterialType = aiwB6R97R66DetectSourceMaterialType(absPath);
  1738	      const aiwB6R97R67TextLike = aiwB6R98R3BIsTextLikeFile(absPath);
  1739	      const aiwB6R97R67MetadataOnly = ["pdf", "image", "audio"].includes(aiwB6R97R67MaterialType);
  1740	
  1741	      if (!aiwB6R97R67TextLike && !aiwB6R97R67MetadataOnly) {
  1742	        rejected.push({ path: candidate, reason: "unsupported_source_extension", media_type: aiwB6R97R67MaterialType });
  1743	        continue;
  1744	      }
  1745	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_END */
  1746	

### response around line 1742
  1732	        rejected.push({ path: candidate, reason: "outside_allowed_roots" });
  1733	        continue;
  1734	      }
  1735	
  1736	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_START */
  1737	      const aiwB6R97R67MaterialType = aiwB6R97R66DetectSourceMaterialType(absPath);
  1738	      const aiwB6R97R67TextLike = aiwB6R98R3BIsTextLikeFile(absPath);
  1739	      const aiwB6R97R67MetadataOnly = ["pdf", "image", "audio"].includes(aiwB6R97R67MaterialType);
  1740	
  1741	      if (!aiwB6R97R67TextLike && !aiwB6R97R67MetadataOnly) {
  1742	        rejected.push({ path: candidate, reason: "unsupported_source_extension", media_type: aiwB6R97R67MaterialType });
  1743	        continue;
  1744	      }
  1745	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_END */
  1746	
  1747	      if (!fs.existsSync(absPath)) {
  1748	        rejected.push({ path: candidate, reason: "not_found" });
  1749	        continue;
  1750	      }
  1751	
  1752	      const stat = fs.statSync(absPath);
  1753	      if (!stat.isFile()) {
  1754	        rejected.push({ path: candidate, reason: "not_file" });
  1755	        continue;
  1756	      }

### response around line 1748
  1738	      const aiwB6R97R67TextLike = aiwB6R98R3BIsTextLikeFile(absPath);
  1739	      const aiwB6R97R67MetadataOnly = ["pdf", "image", "audio"].includes(aiwB6R97R67MaterialType);
  1740	
  1741	      if (!aiwB6R97R67TextLike && !aiwB6R97R67MetadataOnly) {
  1742	        rejected.push({ path: candidate, reason: "unsupported_source_extension", media_type: aiwB6R97R67MaterialType });
  1743	        continue;
  1744	      }
  1745	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_END */
  1746	
  1747	      if (!fs.existsSync(absPath)) {
  1748	        rejected.push({ path: candidate, reason: "not_found" });
  1749	        continue;
  1750	      }
  1751	
  1752	      const stat = fs.statSync(absPath);
  1753	      if (!stat.isFile()) {
  1754	        rejected.push({ path: candidate, reason: "not_file" });
  1755	        continue;
  1756	      }
  1757	
  1758	      if (stat.size > maxBytes) {
  1759	        rejected.push({ path: candidate, reason: "file_too_large", size: stat.size });
  1760	        continue;
  1761	      }
  1762	

### response around line 1754
  1744	      }
  1745	      /* AIWORKEROS_B6R97R67_MEDIA_METADATA_HOOKS_END */
  1746	
  1747	      if (!fs.existsSync(absPath)) {
  1748	        rejected.push({ path: candidate, reason: "not_found" });
  1749	        continue;
  1750	      }
  1751	
  1752	      const stat = fs.statSync(absPath);
  1753	      if (!stat.isFile()) {
  1754	        rejected.push({ path: candidate, reason: "not_file" });
  1755	        continue;
  1756	      }
  1757	
  1758	      if (stat.size > maxBytes) {
  1759	        rejected.push({ path: candidate, reason: "file_too_large", size: stat.size });
  1760	        continue;
  1761	      }
  1762	
  1763	      if (aiwB6R97R67MetadataOnly && !aiwB6R97R67TextLike) {
  1764	        rows.push({
  1765	          path: absPath,
  1766	          byte_size: stat.size,
  1767	          char_count: 0,
  1768	          body_text: "",

### response around line 1759
  1749	        continue;
  1750	      }
  1751	
  1752	      const stat = fs.statSync(absPath);
  1753	      if (!stat.isFile()) {
  1754	        rejected.push({ path: candidate, reason: "not_file" });
  1755	        continue;
  1756	      }
  1757	
  1758	      if (stat.size > maxBytes) {
  1759	        rejected.push({ path: candidate, reason: "file_too_large", size: stat.size });
  1760	        continue;
  1761	      }
  1762	
  1763	      if (aiwB6R97R67MetadataOnly && !aiwB6R97R67TextLike) {
  1764	        rows.push({
  1765	          path: absPath,
  1766	          byte_size: stat.size,
  1767	          char_count: 0,
  1768	          body_text: "",
  1769	          media_type: aiwB6R97R67MaterialType,
  1770	          analyzer_status: "metadata_only",
  1771	          metadata_only_flag: true,
  1772	          media_metadata_hook_code: "B6R97R67"
  1773	        });

### response around line 1795
  1785	        byte_size: stat.size,
  1786	        char_count: body.length,
  1787	        body_text: body,
  1788	        media_type: "text",
  1789	        analyzer_status: "analyzed",
  1790	        metadata_only_flag: false,
  1791	        media_metadata_hook_code: "B6R97R67"
  1792	      });
  1793	
  1794	      if (totalChars >= maxTotalChars) break;
  1795	    } catch (error) {
  1796	      rejected.push({
  1797	        path: candidate,
  1798	        reason: "read_error",
  1799	        message: error && error.message ? error.message : String(error)
  1800	      });
  1801	    }
  1802	  }
  1803	
  1804	  const analysisResults = aiwB6R97R66BuildSourceMaterialAnalysisResults(rows, rejected);
  1805	
  1806	  return {
  1807	    candidates,
  1808	    rows,
  1809	    rejected,

### response around line 1798
  1788	        media_type: "text",
  1789	        analyzer_status: "analyzed",
  1790	        metadata_only_flag: false,
  1791	        media_metadata_hook_code: "B6R97R67"
  1792	      });
  1793	
  1794	      if (totalChars >= maxTotalChars) break;
  1795	    } catch (error) {
  1796	      rejected.push({
  1797	        path: candidate,
  1798	        reason: "read_error",
  1799	        message: error && error.message ? error.message : String(error)
  1800	      });
  1801	    }
  1802	  }
  1803	
  1804	  const analysisResults = aiwB6R97R66BuildSourceMaterialAnalysisResults(rows, rejected);
  1805	
  1806	  return {
  1807	    candidates,
  1808	    rows,
  1809	    rejected,
  1810	    analysis_results: analysisResults,
  1811	    limits: {
  1812	      max_files: maxFiles,

### response around line 1799
  1789	        analyzer_status: "analyzed",
  1790	        metadata_only_flag: false,
  1791	        media_metadata_hook_code: "B6R97R67"
  1792	      });
  1793	
  1794	      if (totalChars >= maxTotalChars) break;
  1795	    } catch (error) {
  1796	      rejected.push({
  1797	        path: candidate,
  1798	        reason: "read_error",
  1799	        message: error && error.message ? error.message : String(error)
  1800	      });
  1801	    }
  1802	  }
  1803	
  1804	  const analysisResults = aiwB6R97R66BuildSourceMaterialAnalysisResults(rows, rejected);
  1805	
  1806	  return {
  1807	    candidates,
  1808	    rows,
  1809	    rejected,
  1810	    analysis_results: analysisResults,
  1811	    limits: {
  1812	      max_files: maxFiles,
  1813	      max_bytes_per_file: maxBytes,

### response around line 1806
  1796	      rejected.push({
  1797	        path: candidate,
  1798	        reason: "read_error",
  1799	        message: error && error.message ? error.message : String(error)
  1800	      });
  1801	    }
  1802	  }
  1803	
  1804	  const analysisResults = aiwB6R97R66BuildSourceMaterialAnalysisResults(rows, rejected);
  1805	
  1806	  return {
  1807	    candidates,
  1808	    rows,
  1809	    rejected,
  1810	    analysis_results: analysisResults,
  1811	    limits: {
  1812	      max_files: maxFiles,
  1813	      max_bytes_per_file: maxBytes,
  1814	      max_total_chars: maxTotalChars
  1815	    }
  1816	  };
  1817	}
  1818	
  1819	function aiwB6R98R3BSourceFilesMarkdown(sourceFiles) {
  1820	  const rows = sourceFiles && Array.isArray(sourceFiles.rows) ? sourceFiles.rows : [];

### response around line 2025
  2015	
  2016	  // AIWORKEROS_B6R95R3H_PACKAGE_META_ZIP_LINK_BEFORE_DB_FIX
  2017	  // The package metadata is saved to DB before the zip file is written.
  2018	  // Therefore file_name / zip_link must already use the exact sanitized filename
  2019	  // that will be written to disk by aiwB6R95R3D1CreateZipAndAttach.
  2020	  const fileName = aiwB6R95R3D1SafeFilePart(rawFileName, "deliverables.zip").endsWith(".zip")
  2021	    ? aiwB6R95R3D1SafeFilePart(rawFileName, "deliverables.zip")
  2022	    : `${aiwB6R95R3D1SafeFilePart(rawFileName, "deliverables")}.zip`;
  2023	  const zipLink = `aiworkeros://runtime-deliverable-zip/${fileName}`;
  2024	
  2025	  return {
  2026	    package_kind: "delivery_package",
  2027	    package_format: "zip",
  2028	    mime_type: "application/zip",
  2029	    zip_id: zipId,
  2030	    file_name: fileName,
  2031	    zip_link: zipLink,
  2032	    zip_ref: {
  2033	      source: "aiworkeros",
  2034	      storage_code: "runtime-deliverable-zip",
  2035	      file_name: fileName
  2036	    }
  2037	  };
  2038	}
  2039	
