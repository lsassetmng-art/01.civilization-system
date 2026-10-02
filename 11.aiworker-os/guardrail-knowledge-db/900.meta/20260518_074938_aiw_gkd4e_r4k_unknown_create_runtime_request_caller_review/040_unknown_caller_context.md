# GKD-4E-R4K Unknown createRuntimeRequest Caller Context

SERVER_JS=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js

## Unknown callers

```tsv
caller_line	route_hint	method_hint	path_hint	parent_hint	return_var	first_side_effect_line	response_signal_count	side_effect_signal_count	r4i_status	classification	reason
3268	3254:if (req.method === "POST" && url.pathname === "/aiworker/v1/runtime-execution/request") {	POST	/aiworker/v1/runtime-execution/request	3171:const server = http.createServer(async (req, res) => {	result	3293	19	28	review_required	review_required	insufficient route/response contract
```


## Unknown caller around line 3268

```text
  3088	    "  'status', 'WORKER_OUTPUT_DONE',",
  3089	    "  'request_id', (select request_id from created),",
  3090	    "  'output_id', (select output_id from worker_output),",
  3091	    "  'idempotency_key', :'idempotency_key',",
  3092	    "  'requester_app_ref', :'source_app_ref',",
  3093	    "  'source_request_ref', :'source_request_ref',",
  3094	    "  'source_route_code', :'source_route_code',",
  3095	    "  'payload', coalesce((select app_read_payload_jsonb from board limit 1), '{}'::jsonb),",
  3096	    "  'robot_context', :'robot_context_jsonb'::jsonb,",
  3097	    "  'generation_basis', :'generation_basis_jsonb'::jsonb,",    "  'deliverable', jsonb_build_object(",
  3098	    "    'package_kind', 'delivery_package',",
  3099	    "    'deliverable_kind', 'document',",
  3100	    "    'title', :'output_title_ja',",
  3101	    "    'body_format', 'markdown',",
  3102	    "    'deliverable_package', :'deliverable_package_jsonb'::jsonb,",
  3103	    "    'generated_artifacts', :'generated_artifacts_jsonb'::jsonb,",
  3104	    "    'body_markdown', :'output_body_ja',",
  3105	    "    'summary_text', :'output_summary_ja',",
  3106	    "    'quality_notes', :'quality_notes',",
  3107	    "    'unresolved_issues', :'unresolved_issues',",
  3108	    "    'next_steps', :'next_steps',",
  3109	    "    'output_id', (select output_id from worker_output),",
  3110	    "    'zip_link', :'deliverable_zip_link'",
  3111	    "  ),",
  3112	    "  'deliverable_ref', jsonb_build_object(",
  3113	    "    'source', 'aiworkeros',",
  3114	    "    'schema', 'aiworker',",
  3115	    "    'table', 'runtime_worker_output',",
  3116	    "    'id', (select output_id from worker_output)::text",
  3117	    "  ),",
  3118	    "  'deliverable_link', :'deliverable_zip_link',",    "  'requester_delivery_payload', jsonb_build_object(",
  3119	    "    'summary_text', :'output_summary_ja',",
  3120	    "    'deliverable_title', :'output_title_ja',",
  3121	    "    'package_kind', 'delivery_package',",
  3122	    "    'deliverable_kind', 'document',",
  3123	    "    'body_format', 'markdown',",
  3124	    "    'generated_artifacts', :'generated_artifacts_jsonb'::jsonb,",
  3125	    "    'deliverable_link', :'deliverable_zip_link',",
  3126	    "    'deliverable_package', :'deliverable_package_jsonb'::jsonb,",
  3127	    "    'deliverable_ref', jsonb_build_object(",
  3128	    "      'source', 'aiworkeros',",
  3129	    "      'schema', 'aiworker',",
  3130	    "      'table', 'runtime_worker_output',",
  3131	    "      'id', (select output_id from worker_output)::text",
  3132	    "    )",
  3133	    "  ),",
  3134	    "  'safety', jsonb_build_object(",
  3135	    "    'external_execution_performed_flag', false,",
  3136	    "    'pg_apply_performed_flag', false,",
  3137	    "    'destructive_action_performed_flag', false",
  3138	    "  )",
  3139	    ")::text;",
  3140	  ].join("\n");
  3141	
  3142	  const responsePayload = psqlJson(sql, {
  3143	    app_surface_code: payload.app_surface_code,
  3144	    model_code: payload.model_code,
  3145	    task_domain_code: payload.task_domain_code,
  3146	    task_title: payload.task_title,
  3147	    task_instruction_ja: payload.task_instruction_ja,
  3148	    source_app_ref: payload.source_app_ref || "HTTP_LOCAL",
  3149	    source_request_ref: payload.source_request_ref || "",
  3150	    source_route_code: sourceRouteCode,
  3151	    requested_by_ref: payload.requested_by_ref || "human",
  3152	    idempotency_key: idempotencyKey,
  3153	    output_title_ja: deliverable.outputTitle,
  3154	    output_body_ja: deliverable.bodyMarkdown,
  3155	    output_summary_ja: deliverable.summaryText,
  3156	    quality_notes: deliverable.qualityNotes,
  3157	    unresolved_issues: deliverable.unresolvedIssues,
  3158	    next_steps: deliverable.nextSteps,
  3159	    deliverable_package_jsonb: JSON.stringify(deliverable.deliverablePackage),
  3160	    deliverable_zip_link: deliverable.deliverablePackage.zip_link,
  3161	    generated_artifacts_jsonb: JSON.stringify(deliverable.generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index))),
  3162	    robot_context_jsonb: JSON.stringify(deliverable.robotContext),
  3163	    generation_basis_jsonb: JSON.stringify(deliverable.generationBasis),
  3164	    output_payload_jsonb: JSON.stringify(deliverable.outputPayload),
  3165	    artifacts_jsonb: JSON.stringify(deliverable.artifacts)
  3166	  });
  3167	
  3168	  return aiwB6R95R3D1CreateZipAndAttach(responsePayload, deliverable);
  3169	}
  3170	
  3171	const server = http.createServer(async (req, res) => {
  3172	  const url = new URL(req.url, `http://${req.headers.host || "127.0.0.1"}`);
  3173	
  3174	  try {
  3175	    if (req.method === "GET" && url.pathname === "/health") {
  3176	      return sendJson(res, 200, {
  3177	        ok: true,
  3178	        service: "aiworker-runtime-execution-http-api",
  3179	        db: "PERSONA_DATABASE_URL",
  3180	        external_execution: false,
  3181	        pg_apply: false,
  3182	        destructive_action: false
  3183	      });
  3184	    }
  3185	
  3186	    if (!requireAuth(req)) {
  3187	      return sendJson(res, 401, {
  3188	        result: "error",
  3189	        error_code: "UNAUTHORIZED",
  3190	        message: "Missing or invalid Authorization bearer token."
  3191	      });
  3192	    }
  3193	
  3194	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/endpoint-ready") {
  3195	      return sendJson(res, 200, { result: "ok", data: endpointReady() });
  3196	    }
  3197	
  3198	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/api-contract") {
  3199	      return sendJson(res, 200, { result: "ok", data: apiContracts() });
  3200	    }
  3201	
  3202	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/persistent-smoke") {
  3203	      return sendJson(res, 200, { result: "ok", data: persistentSmoke() });
  3204	    }
  3205	
  3206	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/pipeline-board") {
  3207	      return sendJson(res, 200, { result: "ok", data: pipelineBoard(url.searchParams) });
  3208	    }
  3209	
  3210	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/app-read-payload") {
  3211	      return sendJson(res, 200, { result: "ok", data: appReadPayload(url.searchParams) });
  3212	    }
  3213	
  3214	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/delivery") {
  3215	      return sendJson(res, 200, { result: "ok", data: deliveryBoard(url.searchParams) });
  3216	    }
  3217	
  3218	
  3219	    // BRAIN_CONTEXT_BRIDGE_ROUTE_V1
  3220	    if (req.method === "GET" && url.pathname === "/aiworker/v1/runtime-execution/brain-context") {
  3221	      const modelCode = url.searchParams.get("model_code") || url.searchParams.get("modelCode") || "";
  3222	      const usePurposeCode =
  3223	        url.searchParams.get("use_purpose_code") ||
  3224	        url.searchParams.get("purpose_code") ||
  3225	        url.searchParams.get("task_domain_code") ||
  3226	        "reference";
  3227	      const domainsRaw = url.searchParams.get("domains") || "";
  3228	      const domainCodes = domainsRaw
  3229	        ? domainsRaw.split(",").map((value) => value.trim()).filter(Boolean)
  3230	        : [];
  3231	      const includeMissingSources =
  3232	        url.searchParams.get("include_missing_sources") === "true" ||
  3233	        url.searchParams.get("includeMissingSources") === "true";
  3234	
  3235	      const brainContext = buildRuntimeBrainContext({
  3236	        modelCode,
  3237	        usePurposeCode,
  3238	        domainCodes,
  3239	        includeMissingSources
  3240	      });
  3241	
  3242	      return sendJson(res, 200, {
  3243	        result: "ok",
  3244	        external_execution_performed_flag: false,
  3245	        data: {
  3246	          model_code: modelCode,
  3247	          use_purpose_code: brainContext.purposeCode,
  3248	          brain_context: brainContext,
  3249	          prompt_brain_context: renderPromptBrainContext(brainContext)
  3250	        }
  3251	      });
  3252	    }
  3253	
  3254	    if (req.method === "POST" && url.pathname === "/aiworker/v1/runtime-execution/request") {
  3255	      const bodyText = await readBody(req);
  3256	      let payload;
  3257	      try {
  3258	        payload = bodyText ? JSON.parse(bodyText) : {};
  3259	      } catch (e) {
  3260	        return sendJson(res, 400, {
  3261	          result: "error",
  3262	          error_code: "INVALID_JSON",
  3263	          message: "Request body must be valid JSON."
  3264	        });
  3265	      }
  3266	
  3267	      const idempotencyKey = req.headers["idempotency-key"] || "";
  3268	      const result = createRuntimeRequest(payload, idempotencyKey);
  3269	      return sendJson(res, 201, result);
  3270	    }
  3271	
  3272	    return sendJson(res, 404, {
  3273	      result: "error",
  3274	      error_code: "NOT_FOUND",
  3275	      path: url.pathname
  3276	    });
  3277	  } catch (err) {
  3278	    const status = err.httpStatus || 500;
  3279	    return sendJson(res, status, {
  3280	      result: "error",
  3281	      error_code: status === 400 ? "BAD_REQUEST" : "INTERNAL_ERROR",
  3282	      message: err.message,
  3283	      safety: {
  3284	        external_execution_performed_flag: false,
  3285	        pg_apply_performed_flag: false,
  3286	        destructive_action_performed_flag: false
  3287	      }
  3288	    });
  3289	  }
  3290	});
  3291	
  3292	server.listen(port, "127.0.0.1", () => {
  3293	  console.log(`AIWorkerOS runtime execution HTTP API listening on http://127.0.0.1:${port}`);
  3294	});
  3295	
  3296	
  3297	// AIW_B6R97R14_QUEUE_CONSUMER_START
  3298	// AIWorkerOS-owned queue consumer.
  3299	// AICM does not trigger execution here.
  3300	// This consumer scans waiting/retryable work, claims it, calls existing createRuntimeRequest,
  3301	// records AIWorkerOS request/output metadata, and creates/updates AICM human review rows.
  3302	const childProcessB6R97R14 = require("node:child_process");
  3303	
  3304	function aiwB6R97R14DbUrl() {
  3305	  return process.env.PERSONA_DATABASE_URL || process.env.DATABASE_URL || "";
  3306	}
  3307	
  3308	function aiwB6R97R14SqlLiteral(value) {
  3309	  return "'" + String(value == null ? "" : value).replace(/'/g, "''") + "'";
  3310	}
  3311	
  3312	function aiwB6R97R14IsUuid(value) {
  3313	  return /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/.test(String(value || "").trim());
  3314	}
  3315	
  3316	function aiwB6R97R14UuidOrNull(value) {
  3317	  const text = String(value || "").trim();
  3318	  return aiwB6R97R14IsUuid(text) ? aiwB6R97R14SqlLiteral(text) + "::uuid" : "NULL";
  3319	}
  3320	
  3321	function aiwB6R97R14PsqlText(sql) {
  3322	  const dbUrl = aiwB6R97R14DbUrl();
  3323	  if (!dbUrl) {
  3324	    throw new Error("PERSONA_DATABASE_URL is not set for AIWorkerOS consumer");
  3325	  }
  3326	
  3327	  // AIW_B6R97R17_PSQL_STDIN_SAFE_ERROR_PATCH
  3328	  // Pass SQL via stdin instead of psql -c to avoid OS argv length limits.
  3329	  return childProcessB6R97R14.execFileSync("psql", [
  3330	    dbUrl,
  3331	    "-v", "ON_ERROR_STOP=1",
  3332	    "-X",
  3333	    "-q",
  3334	    "-A",
  3335	    "-t",
  3336	    "-P", "pager=off"
  3337	  ], {
  3338	    input: String(sql || "") + "\n",
  3339	    encoding: "utf8",
  3340	    maxBuffer: 1024 * 1024 * 40
  3341	  }).trim();
  3342	}
  3343	
  3344	function aiwB6R97R14PsqlJson(sql, fallback) {
  3345	  const raw = aiwB6R97R14PsqlText(sql);
  3346	  if (!raw) return fallback;
  3347	  try {
  3348	    return JSON.parse(raw);
  3349	  } catch (error) {
  3350	    throw new Error("AIWorkerOS consumer failed to parse psql JSON: " + error.message + " raw=" + raw.slice(0, 400));
  3351	  }
  3352	}
  3353	
  3354	function aiwB6R97R14ClaimWorkUnits(limit) {
  3355	  const sql = [
  3356	    "with picked as (",
  3357	    "  select u.aicm_worker_work_unit_id",
  3358	    "  from business.aicm_worker_work_unit u",
  3359	    "  where (",
  3360	    "    coalesce(u.metadata_jsonb->>'aiworkeros_execution_state','') in ('waiting','waiting_for_artifact_zip')",
  3361	    "    or lower(coalesce(u.metadata_jsonb->>'aiworkeros_retryable','false')) in ('true','t','1','yes')",
  3362	    "  )",
  3363	    "    and coalesce(u.metadata_jsonb->>'aiworkeros_consumer_claim_state','') <> 'processing'",
  3364	    "    and coalesce(u.metadata_jsonb->>'aiworkeros_request_id','') = ''",
  3365	    "  order by u.updated_at asc nulls last, u.created_at asc nulls last",
  3366	    "  limit " + Number(limit || 5),
  3367	    "  for update skip locked",
  3368	    "), claimed as (",
  3369	    "  update business.aicm_worker_work_unit u",
  3370	    "  set metadata_jsonb = coalesce(u.metadata_jsonb, '{}'::jsonb) || jsonb_build_object(",
  3371	    "      'aiworkeros_execution_state', 'processing',",
  3372	    "      'aiworkeros_retryable', 'false',",
  3373	    "      'aiworkeros_consumer_claim_state', 'processing',",
  3374	    "      'aiworkeros_claimed_by', 'AIWorkerOS/B6R97R14',",
  3375	    "      'aiworkeros_claimed_at', now()::text",
  3376	    "    ),",
  3377	    "    updated_at = now()",
  3378	    "  from picked p",
  3379	    "  where u.aicm_worker_work_unit_id = p.aicm_worker_work_unit_id",
  3380	    "  returning to_jsonb(u) as row_json",
  3381	    ")",
  3382	    "select coalesce(jsonb_agg(row_json), '[]'::jsonb)::text from claimed;"
  3383	  ].join("\n");
  3384	
  3385	  return aiwB6R97R14PsqlJson(sql, []);
  3386	}
  3387	
  3388	function aiwB6R97R14BuildPayload(row) {
  3389	  const meta = row && row.metadata_jsonb && typeof row.metadata_jsonb === "object" ? row.metadata_jsonb : {};
  3390	  const workUnitId = String(row.aicm_worker_work_unit_id || row.worker_work_unit_id || row.work_unit_id || "");
  3391	  const sourceRouteCode = String(meta.source_route_code || row.source_route_code || "aicm_worker_work_unit");
  3392	  const title = String(row.work_unit_name || row.task_name || row.title || "AICompanyManager Worker作業");
  3393	  const instruction = [
  3394	    String(row.work_instruction_text || ""),
  3395	    String(row.work_unit_description || ""),
  3396	    String(row.note || ""),
  3397	    "AICM worker_work_unit_id: " + workUnitId,
  3398	    "source_route_code: " + sourceRouteCode
  3399	  ].filter(Boolean).join("\n\n");
  3400	
  3401	  return {
  3402	    app_surface_code: String(meta.app_surface_code || "ai_company_manager"),
  3403	    model_code: String(meta.model_code || "byd2_003_asic_leader3"),
  3404	    task_domain_code: String(meta.task_domain_code || "business_operation"),
  3405	    task_title: title,
  3406	    task_instruction_ja: instruction || title,
  3407	    source_app_ref: String(meta.source_app_ref || "AICompanyManager"),
  3408	    source_request_ref: workUnitId,
  3409	    requested_by_ref: String(meta.requested_by_ref || "AIWorkerOSConsumer"),
  3410	    source_route_code: sourceRouteCode,
  3411	    metadata_jsonb: {
  3412	      aicm_worker_work_unit_id: workUnitId,
  3413	      owner_civilization_id: row.owner_civilization_id || "",
  3414	      aicm_user_company_id: row.aicm_user_company_id || "",
  3415	      source_route_code: sourceRouteCode,
  3416	      consumer_code: "B6R97R14"
  3417	    }
  3418	  };
  3419	}
  3420	
  3421	function aiwB6R97R14RequestId(result) {
  3422	  return String(
  3423	    (result && result.request_id) ||
  3424	    (result && result.runtime_request_id) ||
  3425	    (result && result.data && result.data.request_id) ||
  3426	    ""
  3427	  );
  3428	}
  3429	
  3430	function aiwB6R97R14OutputId(result) {
  3431	  return String(
  3432	    (result && result.output_id) ||
  3433	    (result && result.deliverable_ref && result.deliverable_ref.id) ||
  3434	    (result && result.requester_delivery_payload && result.requester_delivery_payload.deliverable_ref && result.requester_delivery_payload.deliverable_ref.id) ||
  3435	    ""
  3436	  );
  3437	}
  3438	
  3439	function aiwB6R97R14Summary(result) {
  3440	  return String(
  3441	    (result && result.requester_delivery_payload && result.requester_delivery_payload.summary_text) ||
  3442	    (result && result.deliverable && result.deliverable.summary_text) ||
  3443	    (result && result.summary_text) ||
  3444	    ""
  3445	  );
  3446	}
  3447	
  3448	function aiwB6R97R14DeliverableLink(result) {
  3449	  return String(
  3450	    (result && result.deliverable_link) ||
  3451	    (result && result.requester_delivery_payload && result.requester_delivery_payload.deliverable_link) ||
  3452	    (result && result.deliverable && result.deliverable.zip_link) ||
  3453	    ""
  3454	  );
  3455	}
  3456	
  3457	function aiwB6R97R14MarkFailed(row, error) {
  3458	  const id = row && row.aicm_worker_work_unit_id;
  3459	  if (!aiwB6R97R14IsUuid(id)) return;
  3460	
  3461	  // AIW_B6R97R17_PSQL_STDIN_SAFE_ERROR_PATCH: never store DB URL or full SQL command in metadata.
  3462	  const rawMessage = String(error && error.message ? error.message : error);
  3463	  const message = rawMessage
  3464	    .replace(/postgres(?:ql)?:\/\/[^\s]+/gi, "[DB_URL_REDACTED]")
  3465	    .replace(/-c\s+update[\s\S]*/i, "-c [SQL_REDACTED]")
  3466	    .split("\n")
  3467	    .slice(0, 8)
  3468	    .join("\n")
  3469	    .slice(0, 600);
  3470	
  3471	  const sql = [
  3472	    "update business.aicm_worker_work_unit",
  3473	    "set metadata_jsonb = coalesce(metadata_jsonb, '{}'::jsonb) || jsonb_build_object(",
  3474	    "  'aiworkeros_execution_state', 'waiting',",
  3475	    "  'aiworkeros_retryable', 'true',",
  3476	    "  'aiworkeros_consumer_claim_state', 'failed',",
  3477	    "  'aiworkeros_last_error', " + aiwB6R97R14SqlLiteral(message) + ",",
  3478	    "  'aiworkeros_last_failed_at', now()::text",
  3479	    "), updated_at = now()",
  3480	    "where aicm_worker_work_unit_id = " + aiwB6R97R14UuidOrNull(id) + ";"
  3481	  ].join("\n");
  3482	
  3483	  aiwB6R97R14PsqlText(sql);
  3484	}
  3485	
  3486	
  3487	// AIW_B6R97R21_SCHEMA_MISMATCH_REPAIR
  3488	function aiwB6R97R19CAicmArtifactKindCode() {
  3489	  // AIW_B6R97R19C_ARTIFACT_KIND_RESOLVER_FINALIZER_PATCH
  3490	  return "delivery_package";
  3491	}
  3492	
  3493	function aiwB6R97R19CFinalizeGeneratedReviewRows(limit) {
  3494	  const artifactKind = aiwB6R97R19CAicmArtifactKindCode();
  3495	  const safeLimit = Math.max(1, Number(limit || 5) || 5);
  3496	
  3497	  const sql = [
  3498	    "with valid_artifact_kind as (",
  3499	    "  select " + aiwB6R97R14SqlLiteral(artifactKind) + "::text as artifact_kind_code",
  3500	    "  where exists (",
  3501	    "    select 1",
  3502	    "    from pg_constraint c",
  3503	    "    where c.conrelid = 'business.aicm_human_review_item'::regclass",
  3504	    "      and c.conname = 'chk_aicm_human_review_artifact_kind'",
  3505	    "      and pg_get_constraintdef(c.oid) like '%' || " + aiwB6R97R14SqlLiteral(artifactKind) + " || '%'",
  3506	    "  )",
  3507	    "), target as (",
  3508	    "  select u.*",
```
