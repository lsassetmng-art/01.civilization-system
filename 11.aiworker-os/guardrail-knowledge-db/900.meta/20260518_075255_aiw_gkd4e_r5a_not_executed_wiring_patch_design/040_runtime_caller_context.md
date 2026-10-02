# GKD-4E-R5A Runtime Caller Context

SERVER_JS=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
CALLER_LINE=3784
RETURN_VAR=result
FIRST_SIDE_EFFECT_LINE=3800

## Runtime caller

```tsv
caller_line	async_nearby	return_var	first_side_effect_line	response_signal_count	side_effect_signal_count	status
3784	3750:async function aiwB6R97R14ConsumerOnce(reason) {	result	3800	7	11	candidate_possible
```

## Context around runtime caller

```text
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
```
