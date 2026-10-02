# GKD-4E-R4J Caller Detail

SERVER_JS=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js

## Classification

```tsv
caller_line	route_hint	method_hint	path_hint	parent_hint	return_var	first_side_effect_line	response_signal_count	side_effect_signal_count	r4i_status	classification	reason
3268	3254:if (req.method === "POST" && url.pathname === "/aiworker/v1/runtime-execution/request") {	POST	/aiworker/v1/runtime-execution/request	3171:const server = http.createServer(async (req, res) => {	result	3293	19	28	review_required	review_required	insufficient route/response contract
3784	-	-	-	3750:async function aiwB6R97R14ConsumerOnce(reason) {	result	3800	7	11	candidate_possible	runtime_route_candidate	R4I found async/return var/side effect/response signals
```


## Caller around line 3268

```text
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
```

## Caller around line 3784

```text
  3664	    "      'aiworkeros_request_id', " + aiwB6R97R14SqlLiteral(requestId) + ",",
  3665	    "      'aiworkeros_output_id', " + aiwB6R97R14SqlLiteral(outputId) + ",",
  3666	    "      'aiworkeros_deliverable_link', " + aiwB6R97R14SqlLiteral(link) + ",",
  3667	    "      'aiworkeros_completed_at', now()::text",
  3668	    "    ),",
  3669	    "    updated_at = now()",
  3670	    "where aicm_worker_work_unit_id = " + aiwB6R97R14UuidOrNull(workUnitId) + ";",
  3671	    "",
  3672	    "with existing as (",
  3673	    "  select aicm_human_review_item_id",
  3674	    "  from business.aicm_human_review_item",
  3675	    "  where related_worker_work_unit_id = " + aiwB6R97R14UuidOrNull(workUnitId),
  3676	    "    and coalesce(human_review_status_code,'') = 'pending'",
  3677	    "  limit 1",
  3678	    "), updated as (",
  3679	    "  update business.aicm_human_review_item h",
  3680	    "  set review_title = " + aiwB6R97R14SqlLiteral(title) + ",",
  3681	    "      delivery_summary_text = " + aiwB6R97R14SqlLiteral(summary) + ",",
  3682	    "      artifact_link = " + aiwB6R97R14SqlLiteral(link) + ",",
  3683	    "      ai_review_result_text = 'AIWorkerOS consumer completed deliverable generation.',",
  3684	    "      metadata_jsonb = coalesce(h.metadata_jsonb, '{}'::jsonb) || jsonb_build_object(",
  3685	    "        'source_route_code', " + aiwB6R97R14SqlLiteral(sourceRouteCode) + ",",
  3686	    "        'aiworkeros_request_id', " + aiwB6R97R14SqlLiteral(requestId) + ",",
  3687	    "        'aiworkeros_output_id', " + aiwB6R97R14SqlLiteral(outputId) + ",",
  3688	    "        'aiworkeros_result_compact', " + aiwB6R97R14SqlLiteral(compactResultJson) + "::jsonb",
  3689	    "      ),",
  3690	    "      updated_at = now()",
  3691	    "  where h.aicm_human_review_item_id in (select aicm_human_review_item_id from existing)",
  3692	    "  returning h.aicm_human_review_item_id",
  3693	    "), inserted as (",
  3694	    "  insert into business.aicm_human_review_item (",
  3695	    "    owner_civilization_id,",
  3696	    "    aicm_user_company_id,",
  3697	    "    aicm_user_company_department_id,",
  3698	    "    aicm_user_company_section_id,",
  3699	    "    related_manager_major_work_item_id,",
  3700	    "    related_worker_work_unit_id,",
  3701	    "    review_kind_code,",
  3702	    "    artifact_kind_code,",
  3703	    "    review_title,",
  3704	    "    delivery_summary_text,",
  3705	    "    main_changes_text,",
  3706	    "    ai_review_result_text,",
  3707	    "    unresolved_issues_text,",
  3708	    "    artifact_link,",
  3709	    "    responsible_ai_label,",
  3710	    "    requested_by_ai_label,",
  3711	    "    human_review_status_code,",
  3712	    "    priority_code,",
  3713	    "    metadata_jsonb",
  3714	    "  )",
  3715	    "  select",
  3716	    "    " + ownerExpr + ",",
  3717	    "    " + companyExpr + ",",
  3718	    "    " + deptExpr + ",",
  3719	    "    " + sectionExpr + ",",
  3720	    "    " + majorExpr + ",",
  3721	    "    " + aiwB6R97R14UuidOrNull(workUnitId) + ",",
  3722	    "    'delivery_summary',",
  3723	    "    'delivery_package',",
  3724	    "    " + aiwB6R97R14SqlLiteral(title) + ",",
  3725	    "    " + aiwB6R97R14SqlLiteral(summary) + ",",
  3726	    "    'AIWorkerOS consumer generated deliverable, summary, and zip link.',",
  3727	    "    'AIWorkerOS consumer completed deliverable generation.',",
  3728	    "    '',",
  3729	    "    " + aiwB6R97R14SqlLiteral(link) + ",",
  3730	    "    'AIWorkerOS',",
  3731	    "    'AICompanyManager',",
  3732	    "    'pending',",
  3733	    "    coalesce(" + aiwB6R97R14SqlLiteral(row.priority_code || "") + ", 'normal'),",
  3734	    "    jsonb_build_object(",
  3735	    "      'source_route_code', " + aiwB6R97R14SqlLiteral(sourceRouteCode) + ",",
  3736	    "      'aiworkeros_request_id', " + aiwB6R97R14SqlLiteral(requestId) + ",",
  3737	    "      'aiworkeros_output_id', " + aiwB6R97R14SqlLiteral(outputId) + ",",
  3738	    "      'aiworkeros_result_compact', " + aiwB6R97R14SqlLiteral(compactResultJson) + "::jsonb,",
  3739	    "      'consumer_code', 'B6R97R14'",
  3740	    "    )",
  3741	    "  where not exists (select 1 from existing)",
  3742	    "  returning aicm_human_review_item_id",
  3743	    ")",
  3744	    "select coalesce((select aicm_human_review_item_id::text from updated limit 1), (select aicm_human_review_item_id::text from inserted limit 1), '') as review_id;"
  3745	  ].join("\n");
  3746	
  3747	  aiwB6R97R14PsqlText(sql);
  3748	}
  3749	
  3750	async function aiwB6R97R14ConsumerOnce(reason) {
  3751	  const state = globalThis.__AIW_B6R97R14_QUEUE_CONSUMER_STATE__ || {
  3752	    running: false,
  3753	    lastRunAt: "",
  3754	    lastReason: "",
  3755	    processedTotal: 0
  3756	  };
  3757	  globalThis.__AIW_B6R97R14_QUEUE_CONSUMER_STATE__ = state;
  3758	
  3759	  if (state.running) return { skipped: true, reason: "already_running" };
  3760	
  3761	  state.running = true;
  3762	  state.lastRunAt = new Date().toISOString();
  3763	  state.lastReason = reason;
  3764	
  3765	  const limit = Math.max(1, Number(process.env.AIWORKER_QUEUE_CONSUMER_BATCH_LIMIT || "5") || 5);
  3766	
  3767	  try {
  3768	    const finalizedReviewRowsB6R97R19C = aiwB6R97R19CFinalizeGeneratedReviewRows(limit);
  3769	    if (finalizedReviewRowsB6R97R19C) {
  3770	      state.processedTotal += 1;
  3771	    }
  3772	
  3773	    const rows = aiwB6R97R14ClaimWorkUnits(limit);
  3774	    if (!Array.isArray(rows) || !rows.length) {
  3775	      return { processed: 0 };
  3776	    }
  3777	
  3778	    let processed = 0;
  3779	
  3780	    for (const row of rows) {
  3781	      const payload = aiwB6R97R14BuildPayload(row);
  3782	      const idempotencyKey = "aiworker-consumer-b6r97r14:" + String(row.aicm_worker_work_unit_id || "");
  3783	      try {
  3784	        const result = createRuntimeRequest(payload, idempotencyKey);
  3785	        aiwB6R97R14RecordSuccess(row, result, payload);
  3786	        processed += 1;
  3787	      } catch (error) {
  3788	        aiwB6R97R14MarkFailed(row, error);
  3789	      }
  3790	    }
  3791	
  3792	    state.processedTotal += processed;
  3793	    return { processed };
  3794	  } finally {
  3795	    state.running = false;
  3796	  }
  3797	}
  3798	
  3799	function aiwB6R97R14StartConsumer() {
  3800	  if (process.env.AIWORKER_QUEUE_CONSUMER_ENABLED === "0") {
  3801	    console.log("[B6R97R14] AIWorkerOS queue consumer disabled by env");
  3802	    return;
  3803	  }
  3804	
  3805	  const key = "__AIW_B6R97R14_QUEUE_CONSUMER_STARTED__";
  3806	  if (globalThis[key]) return;
  3807	  globalThis[key] = true;
  3808	
  3809	  const intervalMs = Math.max(1000, Number(process.env.AIWORKER_QUEUE_CONSUMER_INTERVAL_MS || "5000") || 5000);
  3810	
  3811	  setTimeout(() => {
  3812	    aiwB6R97R14ConsumerOnce("startup").catch((error) => {
  3813	      console.error("[B6R97R14] startup consumer failed", String(error && error.message ? error.message : error).replace(/postgres(?:ql)?:\/\/[^\s]+/gi, "[DB_URL_REDACTED]").split("\n").slice(0, 8).join("\n"));
  3814	    });
  3815	  }, 1000);
  3816	
  3817	  const timer = setInterval(() => {
  3818	    aiwB6R97R14ConsumerOnce("interval").catch((error) => {
  3819	      console.error("[B6R97R14] interval consumer failed", String(error && error.message ? error.message : error).replace(/postgres(?:ql)?:\/\/[^\s]+/gi, "[DB_URL_REDACTED]").split("\n").slice(0, 8).join("\n"));
  3820	    });
  3821	  }, intervalMs);
  3822	
  3823	  globalThis.__AIW_B6R97R14_QUEUE_CONSUMER_TIMER__ = timer;
  3824	
  3825	  process.once("SIGTERM", () => clearInterval(timer));
  3826	  process.once("SIGINT", () => clearInterval(timer));
  3827	
  3828	  console.log("[B6R97R14] AIWorkerOS queue consumer started interval_ms=" + intervalMs);
  3829	}
  3830	
  3831	setTimeout(aiwB6R97R14StartConsumer, 1500);
  3832	// AIW_B6R97R14_QUEUE_CONSUMER_END
  3833	
  3834	// B6R98R4F1C_SOURCE_MATERIAL_TMP_CLEANUP_START
  3835	// Completed source material tmp cleanup.
  3836	// Deletes only AICM runtime-source-files/tmp files after worker_unit reaches completed/review_waiting.
  3837	// No cleanup for waiting/running/retryable states.
  3838	const aiwB6R98R4F1CFs = require("node:fs");
  3839	const aiwB6R98R4F1CPath = require("node:path");
  3840	const aiwB6R98R4F1CChildProcess = require("node:child_process");
  3841	
  3842	const AIW_B6R98R4F1C_PATCH_CODE = "B6R98R4F1C";
  3843	const AIW_B6R98R4F1C_TMP_ROOT = process.env.AICM_SOURCE_MATERIAL_TMP_ROOT ||
  3844	  "/data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/storage/runtime-source-files/tmp";
  3845	
  3846	function aiwB6R98R4F1CText(value) {
  3847	  return value === null || value === undefined ? "" : String(value);
  3848	}
  3849	
  3850	function aiwB6R98R4F1CTmpRootResolved() {
  3851	  return aiwB6R98R4F1CPath.resolve(AIW_B6R98R4F1C_TMP_ROOT);
  3852	}
  3853	
  3854	function aiwB6R98R4F1CIsUnderTmpRoot(value) {
  3855	  const target = aiwB6R98R4F1CPath.resolve(aiwB6R98R4F1CText(value));
  3856	  const root = aiwB6R98R4F1CTmpRootResolved();
  3857	  return target === root || target.startsWith(root + aiwB6R98R4F1CPath.sep);
  3858	}
  3859	
  3860	function aiwB6R98R4F1CEscapeRegExp(value) {
  3861	  return aiwB6R98R4F1CText(value).replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  3862	}
  3863	
  3864	function aiwB6R98R4F1CExtractTmpPaths(row) {
  3865	  const text = [
  3866	    aiwB6R98R4F1CText(row.reference_files_text),
  3867	    aiwB6R98R4F1CText(row.metadata_text)
  3868	  ].join("\n");
  3869	
  3870	  const root = aiwB6R98R4F1CEscapeRegExp(aiwB6R98R4F1CTmpRootResolved());
  3871	  const re = new RegExp(root + "[^\\s\"'\\]\\},]+", "g");
  3872	  const found = text.match(re) || [];
  3873	  const unique = [];
  3874	
  3875	  found.forEach((rawPath) => {
  3876	    const cleanPath = aiwB6R98R4F1CText(rawPath).trim();
  3877	    if (!cleanPath) return;
  3878	    if (!aiwB6R98R4F1CIsUnderTmpRoot(cleanPath)) return;
  3879	    if (!unique.includes(cleanPath)) unique.push(cleanPath);
  3880	  });
  3881	
  3882	  return unique;
  3883	}
  3884	
  3885	function aiwB6R98R4F1CRunPsql(sql, timeoutMs) {
  3886	  const dbUrl = process.env.PERSONA_DATABASE_URL;
  3887	  if (!dbUrl) {
  3888	    return {
  3889	      ok: false,
  3890	      stdout: "",
  3891	      stderr: "PERSONA_DATABASE_URL is not set",
  3892	      status: 1
  3893	    };
  3894	  }
  3895	
  3896	  const result = aiwB6R98R4F1CChildProcess.spawnSync(
  3897	    "psql",
  3898	    [dbUrl, "-v", "ON_ERROR_STOP=1", "-X", "-q", "-t", "-A"],
  3899	    {
  3900	      input: sql,
  3901	      encoding: "utf8",
  3902	      timeout: timeoutMs || 20000,
  3903	      maxBuffer: 1024 * 1024 * 4
  3904	    }
  3905	  );
  3906	
  3907	  return {
  3908	    ok: result.status === 0,
  3909	    stdout: result.stdout || "",
  3910	    stderr: result.stderr || "",
  3911	    status: result.status
  3912	  };
  3913	}
  3914	
  3915	function aiwB6R98R4F1CLoadEligibleRows() {
  3916	  const sql = [
  3917	    "select jsonb_build_object(",
  3918	    "  'id', aicm_worker_work_unit_id::text,",
  3919	    "  'reference_files_text', coalesce(reference_files_text,''),",
  3920	    "  'metadata_text', coalesce(metadata_jsonb::text,''),",
  3921	    "  'work_status_code', work_status_code,",
  3922	    "  'review_status_code', review_status_code,",
  3923	    "  'aiworkeros_execution_state', coalesce(metadata_jsonb->>'aiworkeros_execution_state',''),",
  3924	    "  'aiworkeros_consumer_claim_state', coalesce(metadata_jsonb->>'aiworkeros_consumer_claim_state',''),",
  3925	    "  'aiworkeros_retryable', coalesce(metadata_jsonb->>'aiworkeros_retryable','false')",
  3926	    ")::text",
  3927	    "from business.aicm_worker_work_unit",
  3928	    "where (reference_files_text ilike '%runtime-source-files/tmp%' or metadata_jsonb::text ilike '%runtime-source-files/tmp%')",
  3929	    "  and work_status_code = 'review_waiting'",
  3930	    "  and review_status_code = 'waiting'",
  3931	    "  and coalesce(metadata_jsonb->>'aiworkeros_execution_state','') = 'completed'",
  3932	    "  and coalesce(metadata_jsonb->>'aiworkeros_consumer_claim_state','') = 'completed'",
  3933	    "  and coalesce(metadata_jsonb->>'aiworkeros_retryable','false') in ('false','')",
  3934	    "  and coalesce(metadata_jsonb->>'source_material_tmp_cleanup_state','') not in ('deleted','completed')",
  3935	    "order by updated_at desc",
  3936	    "limit 20;"
  3937	  ].join("\n");
  3938	
  3939	  const result = aiwB6R98R4F1CRunPsql(sql, 20000);
  3940	  if (!result.ok) {
  3941	    console.error("[B6R98R4F1C] cleanup eligible load failed", result.stderr);
  3942	    return [];
  3943	  }
  3944	
  3945	  return result.stdout
  3946	    .split(/\r?\n/)
  3947	    .map((line) => line.trim())
  3948	    .filter(Boolean)
  3949	    .map((line) => {
  3950	      try {
  3951	        return JSON.parse(line);
  3952	      } catch (_) {
  3953	        return null;
  3954	      }
  3955	    })
  3956	    .filter(Boolean);
  3957	}
  3958	
  3959	function aiwB6R98R4F1CDeleteTmpPaths(paths) {
  3960	  const deleted = [];
  3961	  const skipped = [];
  3962	
  3963	  (Array.isArray(paths) ? paths : []).forEach((rawPath) => {
  3964	    const target = aiwB6R98R4F1CPath.resolve(aiwB6R98R4F1CText(rawPath));
```
