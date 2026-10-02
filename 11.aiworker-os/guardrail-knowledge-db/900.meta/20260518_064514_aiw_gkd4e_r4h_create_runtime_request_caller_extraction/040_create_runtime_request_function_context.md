# createRuntimeRequest function context

DEF_LINE=3030
```text
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
```
