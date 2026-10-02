# GKD-4E-R4F Block Context

SERVER_JS=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
TOP_START=3000
TOP_END=3039

## Enclosing blocks

```text
rank	start_line	end_line	line_count	kind	header
```

## Context 2880-3199

```text
  2880	  if (!selected || !selected.text) return deliverable;
  2881	
  2882	  const merged = clonePlain(isObject(deliverable) ? deliverable : {});
  2883	  merged.bodyMarkdown = selected.text;
  2884	  merged.body_markdown = selected.text;
  2885	  merged.output_body_ja = selected.text;
  2886	  merged.aiw_b6r97r43_body_source_path = selected.path;
  2887	
  2888	  function patchArtifactArray(value) {
  2889	    if (!Array.isArray(value)) return value;
  2890	
  2891	    return value.map((artifact) => {
  2892	      if (!isObject(artifact)) return artifact;
  2893	
  2894	      const fileName = artifact.file_name || artifact.filename || artifact.name || "";
  2895	      const kind = artifact.kind || artifact.artifact_kind_code || "";
  2896	      const title = artifact.title || "";
  2897	
  2898	      const isMain =
  2899	        fileName === "01_main_deliverable.md" ||
  2900	        kind === "main_deliverable" ||
  2901	        /主成果物|main/i.test(title);
  2902	
  2903	      if (!isMain) return artifact;
  2904	
  2905	      return {
  2906	        ...artifact,
  2907	        file_name: fileName || "01_main_deliverable.md",
  2908	        kind: artifact.kind || "main_deliverable",
  2909	        artifact_kind_code: artifact.artifact_kind_code || "main_deliverable",
  2910	        bodyMarkdown: selected.text,
  2911	        body_markdown: selected.text,
  2912	        content: selected.text,
  2913	        aiw_b6r97r43_body_source_path: selected.path
  2914	      };
  2915	    });
  2916	  }
  2917	
  2918	  merged.generatedArtifacts = patchArtifactArray(merged.generatedArtifacts);
  2919	  merged.generated_artifacts = patchArtifactArray(merged.generated_artifacts);
  2920	
  2921	  return merged;
  2922	}
  2923	/* AIWORKEROS_B6R97R43_CREATE_ZIP_PROVIDED_BODY_PRIORITY_END */
  2924	
  2925	function aiwB6R95R3D1CreateZipAndAttach(responsePayload, deliverable) {
  2926	  const fs = require("fs");
  2927	  const path = require("path");
  2928	
  2929	  const response = responsePayload && typeof responsePayload === "object" ? responsePayload : {};
  2930	  const packageMeta = deliverable?.deliverablePackage || aiwB6R95R3D1BuildZipPackageMeta("requester", "deliverables");
  2931	  const generatedArtifacts = aiwB6R95R3D1BuildGeneratedArtifacts(aiwB6R97R43MergeProvidedBodyIntoDeliverable(deliverable, ...arguments, deliverable));
  2932	
  2933	  const zipDir = process.env.AIWORKEROS_DELIVERABLE_ZIP_DIR || path.join(process.cwd(), "runtime-deliverable-zips");
  2934	  fs.mkdirSync(zipDir, { recursive: true });
  2935	
  2936	  const fileName = aiwB6R95R3D1SafeFilePart(packageMeta.file_name, "deliverables.zip").endsWith(".zip")
  2937	    ? aiwB6R95R3D1SafeFilePart(packageMeta.file_name, "deliverables.zip")
  2938	    : `${aiwB6R95R3D1SafeFilePart(packageMeta.file_name, "deliverables")}.zip`;
  2939	  const zipPath = path.join(zipDir, fileName);
  2940	
  2941	  // AIWORKEROS_B6R95R3F_ZIP_LINK_ACTUAL_FILE_FIX
  2942	  // Keep the returned zip link aligned with the actual sanitized filename written to disk.
  2943	  const actualZipLink = `aiworkeros://runtime-deliverable-zip/${fileName}`;
  2944	  const actualZipRef = Object.assign({}, packageMeta.zip_ref || {}, {
  2945	    source: "aiworkeros",
  2946	    storage_code: "runtime-deliverable-zip",
  2947	    file_name: fileName
  2948	  });
  2949	
  2950	  const summaryText = response.deliverable?.summary_text || deliverable?.summaryText || "";
  2951	  const manifest = {
  2952	    contract_version: "B6R95R3D-R1",
  2953	    contract_name: "aiworkeros_common_requester_multi_artifact_zip_contract",
  2954	    package_purpose: "bundle_generated_artifacts_for_single_download",
  2955	    request_id: response.request_id || null,
  2956	    output_id: response.output_id || null,
  2957	    deliverable_title: response.deliverable?.title || deliverable?.outputTitle || "成果物",
  2958	    summary_text: summaryText,
  2959	    artifact_count: generatedArtifacts.length,
  2960	    generated_artifacts: generatedArtifacts.map((artifact) => ({
  2961	      artifact_no: artifact.artifact_no,
  2962	      artifact_kind_code: artifact.artifact_kind_code,
  2963	      title: artifact.title,
  2964	      file_name: artifact.file_name,
  2965	      body_format: artifact.body_format
  2966	    })),
  2967	    deliverable_ref: response.deliverable_ref || null,
  2968	    robot_context: response.robot_context || deliverable?.robotContext || null,
  2969	    generation_basis: response.generation_basis || deliverable?.generationBasis || null,
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
```

