# createRuntimeRequest caller context

3030:function createRuntimeRequest(payload, idempotencyKeyFromHeader) {
3268:      const result = createRuntimeRequest(payload, idempotencyKey);
3784:        const result = createRuntimeRequest(payload, idempotencyKey);


## around line 3030
```text
  2970	    safety: response.safety || null,
  2971	    created_at: new Date().toISOString()
  2972	  };
  2973	
  2974	  const entries = [
  2975	    { name: "00_summary.md", content: summaryText },
  2976	    ...generatedArtifacts.map((artifact) => ({
  2977	      name: artifact.file_name,
  2978	      content: artifact.body_markdown
  2979	    })),
  2980	    { name: "manifest.json", content: JSON.stringify(manifest, null, 2) }
  2981	  ];
  2982	
  2983	  const zipBuffer = aiwB6R95R3D1ZipStored(entries);
  2984	  fs.writeFileSync(zipPath, zipBuffer);
  2985	  const stat = fs.statSync(zipPath);
  2986	
  2987	  const zipPublic = {
  2988	    package_kind: "delivery_package",
  2989	    package_format: "zip",
  2990	    mime_type: "application/zip",
  2991	    zip_id: packageMeta.zip_id,
  2992	    file_name: fileName,
  2993	    zip_link: actualZipLink,
  2994	    zip_ref: actualZipRef,
  2995	    byte_size: stat.size,
  2996	    entry_count: entries.length,
  2997	    artifact_count: generatedArtifacts.length,
  2998	    created_at: manifest.created_at
  2999	  };
  3000	
  3001	  response.generated_artifacts = generatedArtifacts.map((artifact) => ({
  3002	    artifact_no: artifact.artifact_no,
  3003	    artifact_kind_code: artifact.artifact_kind_code,
  3004	    title: artifact.title,
  3005	    file_name: artifact.file_name,
  3006	    body_format: artifact.body_format
  3007	  }));
  3008	  response.deliverable_package = zipPublic;
  3009	  response.deliverable_zip_ref = actualZipRef;
  3010	  response.deliverable_link = actualZipLink;
  3011	
  3012	  response.requester_delivery_payload = Object.assign({}, response.requester_delivery_payload || {}, {
  3013	    summary_text: summaryText,
  3014	    deliverable_link: actualZipLink,
  3015	    deliverable_package: zipPublic,
  3016	    deliverable_zip_ref: actualZipRef,
  3017	    generated_artifacts: response.generated_artifacts
  3018	  });
  3019	
  3020	  response.deliverable = Object.assign({}, response.deliverable || {}, {
  3021	    deliverable_package: zipPublic,
  3022	    zip_link: actualZipLink,
  3023	    generated_artifacts: response.generated_artifacts
  3024	  });
  3025	
  3026	  return response;
  3027	}
  3028	// AIWORKEROS_B6R95R3D_R1_MULTI_ARTIFACT_ZIP_CONTRACT_END
  3029	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_END
  3030	function createRuntimeRequest(payload, idempotencyKeyFromHeader) {
  3031	  const idempotencyKey = payload.idempotency_key || idempotencyKeyFromHeader || "";
  3032	  const sourceRouteCode = String(
  3033	    payload.source_route_code ||
  3034	    payload.sourceRouteCode ||
  3035	    payload.source_route ||
  3036	    ""
  3037	  ).trim();
  3038	  if (!idempotencyKey) {
  3039	    const e = new Error("Idempotency-Key is required");
  3040	    e.httpStatus = 400;
  3041	    throw e;
  3042	  }
  3043	
  3044	  const required = ["app_surface_code", "model_code", "task_domain_code", "task_title", "task_instruction_ja"];
  3045	  for (const key of required) {
  3046	    if (!payload[key] || String(payload[key]).trim() === "") {
  3047	      const e = new Error(`Missing required field: ${key}`);
  3048	      e.httpStatus = 400;
  3049	      throw e;
  3050	    }
  3051	  }
  3052	
  3053	  const deliverable = aiwB6R95R3R3BuildRequesterFacingDeliverable(payload, sourceRouteCode);
  3054	
  3055	  const sql = [
  3056	    "with created as (",
  3057	    "  select aiworker.fn_runtime_execution_create_request_with_route_v1(",
  3058	    "    :'app_surface_code',",
  3059	    "    :'model_code',",
  3060	    "    :'task_domain_code',",
  3061	    "    :'task_title',",
  3062	    "    :'task_instruction_ja',",
  3063	    "    :'source_app_ref',",
  3064	    "    :'source_request_ref',",
  3065	    "    :'requested_by_ref',",
  3066	    "    :'idempotency_key',",
  3067	    "    :'source_route_code'",
  3068	    "  ) as request_id",
  3069	    "),",
  3070	    "worker_output as (",
  3071	    "  select aiworker.fn_runtime_execution_submit_worker_output(",
  3072	    "    (select request_id from created),",
  3073	    "    :'output_title_ja',",
  3074	    "    :'output_body_ja',",
  3075	    "    :'output_summary_ja',",
  3076	    "    :'output_payload_jsonb'::jsonb,",
  3077	    "    :'artifacts_jsonb'::jsonb",
  3078	    "  ) as output_id",
  3079	    "),",
  3080	    "board as (",
  3081	    "  select p.*",
  3082	    "  from aiworker.vw_app_aiworker_runtime_execution_app_read_payload_v1 p",
  3083	    "  join created c",
  3084	    "    on c.request_id = p.request_id",
  3085	    ")",
  3086	    "select jsonb_build_object(",
  3087	    "  'result', 'completed_internal_draft',",
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
```

## around line 3268
```text
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
```

## around line 3784
```text
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
```
