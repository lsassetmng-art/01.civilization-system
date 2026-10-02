# GKD-4E-R4C Top Candidate Context

TOP_BUCKET_START=3000
TOP_BUCKET_END=3039
TOP_BUCKET_SCORE=79
TOP_BUCKET_COUNT=21

## Top clustered candidates

2920	2959	84	24	2923:artifact_candidate: /* AIWORKEROS_B6R97R43_CREATE_ZIP_PROVIDED_BODY_PRIORITY_END */ || 2925:artifact_candidate: function aiwB6R95R3D1CreateZipAndAttach(responsePayload, deliverable) { || 2930:artifact_candidate:   const packageMeta = deliverable?.deliverablePackage || aiwB6R95R3D1BuildZipPackageMeta("requester", "deliverables"); || 2930:execution_candidate:   const packageMeta = deliverable?.deliverablePackage || aiwB6R95R3D1BuildZipPackageMeta("requester", "deliverables"); || 2931:execution_candidate:   const generatedArtifacts = aiwB6R95R3D1BuildGeneratedArtifacts(aiwB6R97R43MergeProvidedBodyIntoDeliverable(deliverable, ...arguments, deliverable));
3000	3039	79	21	3001:artifact_candidate:   response.generated_artifacts = generatedArtifacts.map((artifact) => ({ || 3001:execution_candidate:   response.generated_artifacts = generatedArtifacts.map((artifact) => ({ || 3008:artifact_candidate:   response.deliverable_package = zipPublic; || 3008:execution_candidate:   response.deliverable_package = zipPublic; || 3009:artifact_candidate:   response.deliverable_zip_ref = actualZipRef;
2000	2039	51	17	2009:artifact_candidate: function aiwB6R95R3D1BuildZipPackageMeta(requesterAppRef, taskTitle) { || 2011:artifact_candidate:   const zipId = `${Date.now()}_${crypto.randomUUID()}`; || 2014:artifact_candidate:   const rawFileName = `${requesterPart}_${titlePart}_${zipId}.zip`; || 2016:artifact_candidate:   // AIWORKEROS_B6R95R3H_PACKAGE_META_ZIP_LINK_BEFORE_DB_FIX || 2017:artifact_candidate:   // The package metadata is saved to DB before the zip file is written.
2960	2999	48	14	2960:artifact_candidate:     generated_artifacts  generatedArtifacts.map((artifact) => ({ || 2960:execution_candidate:     generated_artifacts  generatedArtifacts.map((artifact) => ({ || 2967:artifact_candidate:     deliverable_ref  response.deliverable_ref || null, || 2976:execution_candidate:     ...generatedArtifacts.map((artifact) => ({ || 2983:artifact_candidate:   const zipBuffer = aiwB6R95R3D1ZipStored(entries);
1960	1999	43	11	1985:artifact_candidate: // AIWORKEROS_B6R95R3D_R1_MULTI_ARTIFACT_ZIP_CONTRACT_START || 1988:artifact_candidate:   Multi-artifact deliverable zip package contract. || 1988:execution_candidate:   Multi-artifact deliverable zip package contract. || 1991:execution_candidate:   - AIWorkerOS creates one or more deliverable artifacts from the instruction. || 1992:artifact_candidate:   - AIWorkerOS creates summary_text.
3080	3119	43	11	3102:execution_candidate:     "    'deliverable_package',  'deliverable_package_jsonb'  jsonb,", || 3103:artifact_candidate:     "    'generated_artifacts',  'generated_artifacts_jsonb'  jsonb,", || 3103:execution_candidate:     "    'generated_artifacts',  'generated_artifacts_jsonb'  jsonb,", || 3105:artifact_candidate:     "    'summary_text',  'output_summary_ja',", || 3105:execution_candidate:     "    'summary_text',  'output_summary_ja',",
960	999	39	9	970:execution_candidate:       deliverable_package  deliverablePackage, || 971:artifact_candidate:       deliverable_link  deliverablePackage.zip_link, || 971:execution_candidate:       deliverable_link  deliverablePackage.zip_link, || 972:artifact_candidate:       generated_artifacts  generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)), || 972:execution_candidate:       generated_artifacts  generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index)),
3160	3199	36	16	3160:artifact_candidate:     deliverable_zip_link  deliverable.deliverablePackage.zip_link, || 3160:execution_candidate:     deliverable_zip_link  deliverable.deliverablePackage.zip_link, || 3161:artifact_candidate:     generated_artifacts_jsonb  JSON.stringify(deliverable.generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index))), || 3161:execution_candidate:     generated_artifacts_jsonb  JSON.stringify(deliverable.generatedArtifacts.map((artifact, index) => aiwB6R95R3D1NormalizeGeneratedArtifact(artifact, index))), || 3168:artifact_candidate:   return aiwB6R95R3D1CreateZipAndAttach(responsePayload, deliverable);
2440	2479	32	8	2467:artifact_candidate:     const nextStepLike = /next_steps|nextSteps|next_step|nextStep|summary_text|summaryText|deliverable_ref|deliverableRef/i.test(path) || || 2467:execution_candidate:     const nextStepLike = /next_steps|nextSteps|next_step|nextStep|summary_text|summaryText|deliverable_ref|deliverableRef/i.test(path) || || 2468:artifact_candidate:       text.includes("依頼元アプリでsummary_textとdeliverable_ref/linkを保存する") || || 2468:execution_candidate:       text.includes("依頼元アプリでsummary_textとdeliverable_ref/linkを保存する") || || 2473:artifact_candidate:     const nonMainArtifactPathLike = /qualityNotes|quality_notes|unresolvedIssues|unresolved_issues|nextSteps|next_steps|summary_text|summaryText|deliverable_ref|deliverableRef/i.test(path);
2640	2679	29	11	2640:execution_candidate:   return artifacts.map(aiwB6R95R3D1NormalizeGeneratedArtifact); || 2643:artifact_candidate: function aiwB6R95R3D1ZipCrc32(buffer) { || 2644:artifact_candidate:   let table = aiwB6R95R3D1ZipCrc32._table; || 2654:artifact_candidate:     aiwB6R95R3D1ZipCrc32._table = table; || 2663:artifact_candidate: function aiwB6R95R3D1ZipDosDateTime(date) {
3120	3159	29	7	3124:artifact_candidate:     "    'generated_artifacts',  'generated_artifacts_jsonb'  jsonb,", || 3124:execution_candidate:     "    'generated_artifacts',  'generated_artifacts_jsonb'  jsonb,", || 3125:artifact_candidate:     "    'deliverable_link',  'deliverable_zip_link',", || 3126:execution_candidate:     "    'deliverable_package',  'deliverable_package_jsonb'  jsonb,", || 3127:artifact_candidate:     "    'deliverable_ref', jsonb_build_object(",
3440	3479	28	8	3441:artifact_candidate:     (result && result.requester_delivery_payload && result.requester_delivery_payload.summary_text) || || 3441:execution_candidate:     (result && result.requester_delivery_payload && result.requester_delivery_payload.summary_text) || || 3442:artifact_candidate:     (result && result.deliverable && result.deliverable.summary_text) || || 3442:execution_candidate:     (result && result.deliverable && result.deliverable.summary_text) || || 3443:artifact_candidate:     (result && result.summary_text) ||

## Context around top bucket

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

## Nearby functions/classes
3030	function_or_class	-	function createRuntimeRequest(payload, idempotencyKeyFromHeader) {

## Nearby route lines

## Nearby queue lines
3028	queue_or_execution	// AIWORKEROS_B6R95R3D_R1_MULTI_ARTIFACT_ZIP_CONTRACT_END
3029	queue_or_execution	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_END
3030	queue_or_execution	function createRuntimeRequest(payload, idempotencyKeyFromHeader) {
3057	queue_or_execution	    "  select aiworker.fn_runtime_execution_create_request_with_route_v1(",
3070	queue_or_execution	    "worker_output as (",
3071	queue_or_execution	    "  select aiworker.fn_runtime_execution_submit_worker_output(",
3082	queue_or_execution	    "  from aiworker.vw_app_aiworker_runtime_execution_app_read_payload_v1 p",
3088	queue_or_execution	    "  'status', 'WORKER_OUTPUT_DONE',",
3090	queue_or_execution	    "  'output_id', (select output_id from worker_output),",
3109	queue_or_execution	    "    'output_id', (select output_id from worker_output),",
3113	queue_or_execution	    "    'source', 'aiworkeros',",
3114	queue_or_execution	    "    'schema', 'aiworker',",
3115	queue_or_execution	    "    'table', 'runtime_worker_output',",
3116	queue_or_execution	    "    'id', (select output_id from worker_output)::text",

## Nearby artifact lines
2960	artifact_or_output	    generated_artifacts: generatedArtifacts.map((artifact) => ({
2961	artifact_or_output	      artifact_no: artifact.artifact_no,
2962	artifact_or_output	      artifact_kind_code: artifact.artifact_kind_code,
2963	artifact_or_output	      title: artifact.title,
2964	artifact_or_output	      file_name: artifact.file_name,
2965	artifact_or_output	      body_format: artifact.body_format
2967	artifact_or_output	    deliverable_ref: response.deliverable_ref || null,
2968	artifact_or_output	    robot_context: response.robot_context || deliverable?.robotContext || null,
2969	artifact_or_output	    generation_basis: response.generation_basis || deliverable?.generationBasis || null,
2976	artifact_or_output	    ...generatedArtifacts.map((artifact) => ({
2977	artifact_or_output	      name: artifact.file_name,
2978	artifact_or_output	      content: artifact.body_markdown
2983	artifact_or_output	  const zipBuffer = aiwB6R95R3D1ZipStored(entries);
2984	artifact_or_output	  fs.writeFileSync(zipPath, zipBuffer);
2985	artifact_or_output	  const stat = fs.statSync(zipPath);
2987	artifact_or_output	  const zipPublic = {
2988	artifact_or_output	    package_kind: "delivery_package",
2989	artifact_or_output	    package_format: "zip",
2990	artifact_or_output	    mime_type: "application/zip",
2991	artifact_or_output	    zip_id: packageMeta.zip_id,
2993	artifact_or_output	    zip_link: actualZipLink,
2994	artifact_or_output	    zip_ref: actualZipRef,
2997	artifact_or_output	    artifact_count: generatedArtifacts.length,
3001	artifact_or_output	  response.generated_artifacts = generatedArtifacts.map((artifact) => ({
3002	artifact_or_output	    artifact_no: artifact.artifact_no,
3003	artifact_or_output	    artifact_kind_code: artifact.artifact_kind_code,
3004	artifact_or_output	    title: artifact.title,
3005	artifact_or_output	    file_name: artifact.file_name,
3006	artifact_or_output	    body_format: artifact.body_format
3008	artifact_or_output	  response.deliverable_package = zipPublic;
3009	artifact_or_output	  response.deliverable_zip_ref = actualZipRef;
3010	artifact_or_output	  response.deliverable_link = actualZipLink;
3013	artifact_or_output	    summary_text: summaryText,
3014	artifact_or_output	    deliverable_link: actualZipLink,
3015	artifact_or_output	    deliverable_package: zipPublic,
3016	artifact_or_output	    deliverable_zip_ref: actualZipRef,
3017	artifact_or_output	    generated_artifacts: response.generated_artifacts
3020	artifact_or_output	  response.deliverable = Object.assign({}, response.deliverable || {}, {
3021	artifact_or_output	    deliverable_package: zipPublic,
3022	artifact_or_output	    zip_link: actualZipLink,
3023	artifact_or_output	    generated_artifacts: response.generated_artifacts
3028	artifact_or_output	// AIWORKEROS_B6R95R3D_R1_MULTI_ARTIFACT_ZIP_CONTRACT_END
3029	artifact_or_output	// AIWORKEROS_B6R95R3B_R3_COMMON_DELIVERABLE_CONTRACT_END
3053	artifact_or_output	  const deliverable = aiwB6R95R3R3BuildRequesterFacingDeliverable(payload, sourceRouteCode);
3077	artifact_or_output	    "    :'artifacts_jsonb'::jsonb",
3097	artifact_or_output	    "  'generation_basis', :'generation_basis_jsonb'::jsonb,",    "  'deliverable', jsonb_build_object(",
3098	artifact_or_output	    "    'package_kind', 'delivery_package',",
3099	artifact_or_output	    "    'deliverable_kind', 'document',",
3102	artifact_or_output	    "    'deliverable_package', :'deliverable_package_jsonb'::jsonb,",
3103	artifact_or_output	    "    'generated_artifacts', :'generated_artifacts_jsonb'::jsonb,",
3105	artifact_or_output	    "    'summary_text', :'output_summary_ja',",
3110	artifact_or_output	    "    'zip_link', :'deliverable_zip_link'",
3112	artifact_or_output	    "  'deliverable_ref', jsonb_build_object(",
3118	artifact_or_output	    "  'deliverable_link', :'deliverable_zip_link',",    "  'requester_delivery_payload', jsonb_build_object(",
3119	artifact_or_output	    "    'summary_text', :'output_summary_ja',",

## Nearby response lines
