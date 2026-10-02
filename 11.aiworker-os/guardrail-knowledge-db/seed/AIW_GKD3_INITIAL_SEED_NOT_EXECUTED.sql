-- ============================================================
-- AIWorkerOS Guardrail Knowledge DB
-- GKD-3 INITIAL SEED SQL
-- ============================================================
-- STATUS: REVIEW_ONLY_NOT_EXECUTED
-- TARGET_SCHEMA: aiworker
-- DB_CONNECTION: PERSONA_DATABASE_URL
-- DB_WRITE: NO in GKD-3A
-- SEED_APPLY: NO in GKD-3A
--
-- Apply phase must be separate: GKD-3B.
-- GKD-3B requires AI review accepted + Boss explicit GO.
-- ============================================================

-- ============================================================
-- 1. guardrail_rule seed
-- ============================================================

insert into aiworker.guardrail_rule
(rule_code, rule_name, category_code, severity_code, rule_text, rationale_text, required_action_text, prohibited_action_text, exception_condition_text, status_code)
values
('RULE_NO_GUESS_PATCH','No guess-based patch','code_patch','stop','Do not create patches based on assumptions without checking the actual code, DB definition, view definition, function definition, or design source.','Guess-based patches easily diverge from existing structure and reduce maintainability.','Dump or inspect the target code/schema first, then define the smallest safe patch scope.','Do not patch from memory or expectation only.',null,'active'),
('RULE_DUMP_BEFORE_PATCH','Dump before patch','code_patch','stop','Before code or DB modification, collect the relevant existing source, schema, view, or function definition and confirm insertion points.','Clear evidence avoids accidental broad replacement and responsibility mixing.','Capture target evidence and document the intended change scope before creating a patch.','Do not proceed without target evidence.',null,'active'),
('RULE_NO_TMP_ON_TERMUX','No /tmp on Termux','termux_environment','warn','Do not use /tmp in the Termux environment. Use a user-writable directory such as $HOME/.tmp or a project 900.meta directory.','/tmp may be unavailable or permission denied in the user environment.','Use project-local 900.meta or $HOME/.tmp for temporary files.','Do not write working files to /tmp.',null,'active'),
('RULE_USE_PERSONA_DATABASE_URL_FOR_AIWORKER_CONTEXT','Use PERSONA_DATABASE_URL for AIWorkerOS context','db','stop','AIWorkerOS / AICM / Persona-side work must use PERSONA_DATABASE_URL, not ERP DATABASE_URL.','This project separates Persona-side DB and ERP DB responsibilities.','Check the target domain and use PERSONA_DATABASE_URL for AIWorkerOS/AICM Persona-side work.','Do not run AIWorkerOS/AICM Persona-side SQL against ERP DATABASE_URL.',null,'active'),
('RULE_USE_DATABASE_URL_FOR_ERP_ONLY','Use DATABASE_URL for ERP only','db','stop','ERP-side DB work uses DATABASE_URL. Persona-side AIWorkerOS/AICM work does not.','Prevents cross-database contamination.','Confirm target domain before SQL execution.','Do not mix ERP and Persona-side DB variables.',null,'active'),
('RULE_SQL_REQUIRES_AI_REVIEW','SQL requires AI review','db','stop','SQL, DDL, DB design, and DB apply work require AI review before apply.','AI review catches dangerous operations, compatibility problems, and responsibility conflicts.','Run static checks, read-only compatibility checks, and danger-operation checks before apply.','Do not apply SQL without AI review.',null,'active'),
('RULE_NO_DB_WRITE_WITHOUT_EXPLICIT_GO','No DB write without explicit GO','db','critical','DB write, DDL apply, API POST, destructive actions, and push require explicit user GO.','Execution gates prevent accidental irreversible changes.','Stop and request explicit GO before execution.','Do not infer permission from discussion or draft approval.',null,'active'),
('RULE_NO_PUSH_WITHOUT_EXPLICIT_REQUEST','No git push without explicit request','git','stop','Do not git push unless the user explicitly asks for push.','Pushing changes alters the remote repository state.','Run verification first and wait for explicit push instruction.','Do not push after verification unless explicitly requested.',null,'active'),
('RULE_UI_PATCH_REQUIRES_UI_CENTERED_TEST','UI patch requires UI-centered test','ui','warn','When UI exists, do not rely only on smoke tests. Perform UI-centered verification appropriate to the change.','UI regressions can pass HTTP smoke but fail visually or interactively.','Verify target screen behavior, visibility, and interaction.','Do not mark UI work complete from HTTP 200 alone.',null,'active'),
('RULE_SERVER_MUST_BOOT_BEFORE_BROWSER_CHECK','Server must boot before browser check','server','warn','For local web app checks, start the server if it is not running before HTTP/browser checks.','A stopped server causes false failures.','Boot or reuse a confirmed server, then run HTTP and browser/UI checks.','Do not test browser routes without server availability.',null,'active'),
('RULE_MINIMAL_PATCH_SCOPE','Minimal patch scope','code_patch','warn','Prefer focused changes to the relevant lines or small blocks. Avoid whole-function or broad replacement unless justified.','Minimal scope reduces side effects and keeps maintenance simple.','Target the smallest stable patch surface.','Do not perform broad rewrite as a shortcut.',null,'active'),
('RULE_NO_DEBUG_LEFTOVER','No debug leftovers','code_patch','warn','Temporary debug UI, debug panels, or runtime debug logic must have markers and a removal plan.','Leftover debug logic reduces maintainability and can leak internals.','Use explicit START/END markers and remove debug code after diagnosis.','Do not leave debug-only logic in production paths.',null,'active'),
('RULE_CX22073JW_NON_AGENTIC_REFERENCE_ONLY','CX22073JW is reference only','responsibility_boundary','stop','CX22073JW is a non-agentic knowledge/reference foundation and must not become an execution app or decision authority.','Execution and decision surfaces belong to consuming OS/apps such as AIWorkerOS.','Keep CX22073JW as reference/background data only.','Do not add execution screens or runtime authority to CX22073JW.',null,'active'),
('RULE_AICM_CONSUMES_AIWORKER_DELIVERABLES','AICM consumes AIWorkerOS deliverables','responsibility_boundary','stop','AICM is a consumer of AIWorkerOS-generated deliverable bodies, summaries, and artifact links. It must not fabricate deliverable summaries.','Keeps generation authority in AIWorkerOS and review/display responsibility in AICM.','Store and display AIWorkerOS outputs and links.','Do not synthesize missing deliverable bodies or summaries in AICM.',null,'active'),
('RULE_AIWORKER_OWNS_DELIVERABLE_BODY_SUMMARY_ZIP','AIWorkerOS owns deliverable body summary zip','artifact','stop','AIWorkerOS owns generation of deliverable body, primary summary, and deliverable zip package.','This maintains a single generation authority.','Return summary_text and deliverable_ref/link to consumers.','Do not move generation responsibility into AICM/CommonOS/CX22073JW.',null,'active')
on conflict (rule_code) do update set
  rule_name = excluded.rule_name,
  category_code = excluded.category_code,
  severity_code = excluded.severity_code,
  rule_text = excluded.rule_text,
  rationale_text = excluded.rationale_text,
  required_action_text = excluded.required_action_text,
  prohibited_action_text = excluded.prohibited_action_text,
  exception_condition_text = excluded.exception_condition_text,
  status_code = excluded.status_code,
  updated_at = now();

-- ============================================================
-- 2. guardrail_failure_pattern seed
-- ============================================================

insert into aiworker.guardrail_failure_pattern
(pattern_code, pattern_name, category_code, severity_code, trigger_condition_text, prohibited_action_text, required_action_text, detection_hint_text, auto_action_code, status_code)
values
('GUESS_BASED_PATCH','Guess-based patch','code_patch','stop','Patch or SQL is proposed without code/schema/view/function evidence.','Do not patch based on assumption.','Collect dump/evidence and define the exact change scope.','Missing evidence path, missing dump, or language such as probably/likely without confirmation.','require_dump','active'),
('WIDE_PATCH','Wide patch risk','code_patch','warn','Patch replaces a whole function, large file region, or unrelated logic.','Avoid broad replacement unless explicitly justified.','Narrow the patch to the smallest stable block.','Large diff, whole function replacement, unrelated target files.','require_review','active'),
('DIRECT_DB_WRITE_WITHOUT_REVIEW','Direct DB write without AI review','db','critical','DB write or DDL apply is attempted before AI review.','Do not apply DB changes before review.','Run static review and read-only compatibility checks first.','DDL_APPLY=YES without AI_REVIEW=PASS.','block','active'),
('DB_WRITE_WITHOUT_EXPLICIT_GO','DB write without explicit GO','db','critical','DB write, DDL apply, API POST, destructive action, or push is attempted without explicit user GO.','Do not execute.','Stop and obtain explicit GO.','No BOSS_GO=YES marker.','block','active'),
('UI_CHANGE_WITHOUT_UI_TEST','UI change without UI-centered test','ui','warn','UI patch is completed with only HTTP or smoke check.','Do not complete UI work from smoke alone.','Perform UI-centered verification.','UI target exists but no browser/screenshot/interaction evidence.','require_ui_test','active'),
('SERVER_CHECK_WITHOUT_SERVER_BOOT','Server check without server boot','server','warn','HTTP/browser checks run while server state is unknown.','Do not test before confirming server availability.','Start or confirm server, then check HTTP/browser.','No server PID, port, or HTTP 200 evidence.','warn','active'),
('TERMUX_TMP_USAGE','Termux /tmp usage','termux_environment','warn','Work script uses /tmp in Termux.','Do not use /tmp.','Use $HOME/.tmp or project 900.meta.','Path begins with /tmp.','warn','active'),
('GIT_PUSH_WITHOUT_EXPLICIT_REQUEST','Git push without explicit request','git','stop','git push is planned or executed without explicit user request.','Do not push.','Wait for explicit push request.','GIT_PUSH=YES without explicit instruction.','block','active'),
('SECRET_OUTPUT_RISK','Secret output risk','secret','critical','Script or report may print DATABASE_URL, token, privileged database key, or authorization credential.','Do not print secrets.','Mask or avoid secret output and run secret scan.','database connection URI pattern, privileged_database_role, authorization credential, jwt-like text.','require_secret_scan','active'),
('CROSS_OS_RESPONSIBILITY_MIX','Cross responsibility mix','responsibility_boundary','stop','AICM, AIWorkerOS, CX22073JW, CommonOS, or ERP responsibilities are mixed.','Do not move canonical responsibility into the wrong layer.','Keep owner/consumer/display/reference boundaries.','AICM generating AIWorkerOS outputs, CX execution authority, CommonOS business canon.','require_review','active')
on conflict (pattern_code) do update set
  pattern_name = excluded.pattern_name,
  category_code = excluded.category_code,
  severity_code = excluded.severity_code,
  trigger_condition_text = excluded.trigger_condition_text,
  prohibited_action_text = excluded.prohibited_action_text,
  required_action_text = excluded.required_action_text,
  detection_hint_text = excluded.detection_hint_text,
  auto_action_code = excluded.auto_action_code,
  status_code = excluded.status_code,
  updated_at = now();

-- ============================================================
-- 3. guardrail_response_runbook seed
-- ============================================================

insert into aiworker.guardrail_response_runbook
(runbook_code, title, applies_to_pattern_code, applies_to_category_code, severity_code, first_response_text, investigation_steps_text, repair_steps_text, rollback_condition_text, verification_steps_text, completion_condition_text, status_code)
values
('RUNBOOK_PATCH_FAILURE','Patch failure response','WIDE_PATCH','code_patch','warn','Stop expanding the patch. Identify the failed step and inspect the current file state.','Check target file, patch output, git diff, and whether partial changes were written.','Use the smallest corrective patch. If unsafe or partially broken, restore from the last safe state.','Rollback when the file is broken, cause is unclear, or partial patch cannot be isolated.','Run syntax check and targeted functional verification.','Report final status, changed files, verification, and rollback status.','active'),
('RUNBOOK_DB_ERROR','DB error response','DIRECT_DB_WRITE_WITHOUT_REVIEW','db','stop','Stop DB operation and preserve the error output.','Check SQL, schema, object existence, permissions, and transaction state using read-only queries.','Prepare corrected SQL only after evidence is clear.','Rollback if transaction is open and not committed, or if apply failed before completion.','Run read-only smoke and object inventory after fix.','Report final status, DB_WRITE, DDL_APPLY, and evidence paths.','active'),
('RUNBOOK_UI_REGRESSION','UI regression response','UI_CHANGE_WITHOUT_UI_TEST','ui','warn','Stop completion claim and inspect the actual target screen.','Check browser route, DOM state, responsive layout, and target interaction.','Patch only the responsible UI component or presenter layer.','Rollback if UI state is corrupted or unrelated screens are affected.','Run UI-centered verification, not only HTTP smoke.','Report route, screen, interaction, and remaining risks.','active'),
('RUNBOOK_SERVER_NOT_RUNNING','Server not running response','SERVER_CHECK_WITHOUT_SERVER_BOOT','server','warn','Confirm whether server is running before judging failure.','Check process, port, log file, and health endpoint.','Start the server if missing, then re-run HTTP/browser verification.','Rollback is not usually required unless start script was patched incorrectly.','Confirm HTTP 200 and expected UI route.','Report server PID, port, URL, and verification result.','active'),
('RUNBOOK_ZERO_BYTE_ARTIFACT','Zero-byte artifact response',null,'artifact','stop','Do not treat metadata success as artifact success.','Check artifact file existence, file size, metadata, DB link, and zip verification output separately.','Fix artifact creation pipeline or zip writer responsibility.','Rollback if generated artifact state is corrupted.','Confirm file exists, size > 0, metadata link, and consumer display.','Report artifact path, size, metadata, and consumer status.','active'),
('RUNBOOK_SECRET_SCAN_WARNING','Secret scan warning response','SECRET_OUTPUT_RISK','secret','critical','Stop sharing output and inspect matched lines.','Determine whether match is true secret, false positive, or public placeholder.','Remove/mask secrets and regenerate report.','Rollback file/report if a secret was written into project output.','Run secret scan again and confirm zero real secret matches.','Report sanitized status only, not secret content.','active'),
('RUNBOOK_WRONG_RESPONSIBILITY_SCOPE','Wrong responsibility scope response','CROSS_OS_RESPONSIBILITY_MIX','responsibility_boundary','stop','Stop implementation and restate owner/consumer/display/reference boundaries.','Identify which layer owns the canonical data, runtime action, UI display, and reference knowledge.','Move or redesign the change to the correct owner.','Rollback if wrong-layer files or DB objects were already changed.','Verify touched files/DB objects are within intended scope.','Report target scope, non-target scope, and boundary decision.','active')
on conflict (runbook_code) do update set
  title = excluded.title,
  applies_to_pattern_code = excluded.applies_to_pattern_code,
  applies_to_category_code = excluded.applies_to_category_code,
  severity_code = excluded.severity_code,
  first_response_text = excluded.first_response_text,
  investigation_steps_text = excluded.investigation_steps_text,
  repair_steps_text = excluded.repair_steps_text,
  rollback_condition_text = excluded.rollback_condition_text,
  verification_steps_text = excluded.verification_steps_text,
  completion_condition_text = excluded.completion_condition_text,
  status_code = excluded.status_code,
  updated_at = now();

-- ============================================================
-- 4. guardrail_preflight_template seed
-- ============================================================

insert into aiworker.guardrail_preflight_template
(template_code, target_work_type_code, title, checklist_jsonb, stop_condition_jsonb, required_evidence_jsonb, status_code)
values
('PREFLIGHT_CODE_PATCH','code_patch','Code patch preflight',
 '{"required":["target OS/app/file declared","non-target scope declared","existing code dump inspected","minimal patch scope selected","rollback condition defined","syntax/test plan defined"]}'::jsonb,
 '{"stop":["no existing code evidence","patch scope is broad without justification","responsibility boundary unclear"]}'::jsonb,
 '{"evidence":["target file path","inspection output or dump","planned change summary","verification plan"]}'::jsonb,
 'active'),
('PREFLIGHT_DB_APPLY','db_apply','DB apply preflight',
 '{"required":["target DB variable declared","AI review accepted","Boss GO confirmed","transaction apply planned","rollback behavior documented","post-apply readonly smoke planned","secret scan planned"]}'::jsonb,
 '{"stop":["PERSONA_DATABASE_URL/DATABASE_URL mismatch","AI review missing","Boss GO missing","dangerous SQL detected","secret scan failed"]}'::jsonb,
 '{"evidence":["AI review report","DDL/SQL hash","pre-apply readonly check","apply report","post-apply smoke"]}'::jsonb,
 'active'),
('PREFLIGHT_DB_READONLY','db_readonly','DB readonly preflight',
 '{"required":["target DB variable declared","readonly intent declared","output paths declared","secret output avoided"]}'::jsonb,
 '{"stop":["DB variable missing","query may write","secret output risk"]}'::jsonb,
 '{"evidence":["readonly query file or command","report path","secret scan result when relevant"]}'::jsonb,
 'active'),
('PREFLIGHT_UI_PATCH','ui_patch','UI patch preflight',
 '{"required":["target screen declared","non-target screens declared","existing UI code inspected","UI-centered verification planned","server availability handled"]}'::jsonb,
 '{"stop":["target screen unclear","no UI verification plan","server unavailable and not handled"]}'::jsonb,
 '{"evidence":["route/url","target component/file","browser or UI verification result"]}'::jsonb,
 'active'),
('PREFLIGHT_SERVER_PATCH','server_patch','Server patch preflight',
 '{"required":["target route/server file declared","existing server code inspected","port/start behavior known","HTTP verification planned","log path planned"]}'::jsonb,
 '{"stop":["server responsibility unclear","route conflict risk","no health check"]}'::jsonb,
 '{"evidence":["server file","route list","health check output","log path"]}'::jsonb,
 'active'),
('PREFLIGHT_ARTIFACT_GENERATION','artifact_generation','Artifact generation preflight',
 '{"required":["artifact owner declared","body/summary/link responsibility declared","file existence and size verification planned","consumer display responsibility declared"]}'::jsonb,
 '{"stop":["artifact owner unclear","metadata-only success","zip/file size not checked"]}'::jsonb,
 '{"evidence":["artifact path","file size","metadata link","consumer display or review path"]}'::jsonb,
 'active'),
('PREFLIGHT_GIT_PUSH','git_push','Git push preflight',
 '{"required":["user explicit push request","verification passed","secret scan passed","commit scope known","remote target known"]}'::jsonb,
 '{"stop":["no explicit push request","verification missing","secret scan failed"]}'::jsonb,
 '{"evidence":["git diff/status","verification report","secret scan","push request"]}'::jsonb,
 'active')
on conflict (template_code) do update set
  target_work_type_code = excluded.target_work_type_code,
  title = excluded.title,
  checklist_jsonb = excluded.checklist_jsonb,
  stop_condition_jsonb = excluded.stop_condition_jsonb,
  required_evidence_jsonb = excluded.required_evidence_jsonb,
  status_code = excluded.status_code,
  updated_at = now();

-- ============================================================
-- 5. guardrail_mistake_case seed
-- ============================================================

insert into aiworker.guardrail_mistake_case
(case_code, title, target_os_code, target_app_code, target_domain_code, phase_code, mistake_category_code, severity_code, summary_text, root_cause_text, impact_text, correct_response_text, recurrence_prevention_text, next_check_condition_text, related_report_path, related_run_dir, status_code)
values
('PATCH_TOO_BROAD_FUNCTION_REPLACE','Patch too broad function replacement','common','all','implementation','patch','code_patch','warn','A broad function or large block replacement increases side effects and maintenance cost.','Patch scope was not narrowed to the smallest responsible block.','Unrelated behavior can regress and review becomes difficult.','Inspect current code and patch only targeted lines or small stable blocks.','Preflight must check patch scope and require justification for broad replacement.','If patch touches whole function or multiple unrelated areas, require review.',null,null,'active'),
('GUESS_BASED_PATCH_WITHOUT_DUMP','Guess-based patch without dump','common','all','implementation','patch','code_patch','stop','Patch or SQL is produced without confirming actual source/schema.','Work proceeded from assumption rather than evidence.','Patch may target nonexistent structure or wrong responsibility.','Collect file/schema/view/function dump first.','Require dump-before-patch rule for code and DB changes.','If evidence file/path is missing, block patch.',null,null,'active'),
('SERVER_NOT_STARTED_BEFORE_UI_CHECK','Server not started before UI check','common','local_web_app','implementation','verification','server','warn','UI/HTTP verification was attempted without confirming server startup.','Server state was assumed.','False failures or incomplete verification.','Start or confirm server before HTTP/browser checks.','Server PID/port/health evidence should be required.','If server status is unknown, require server boot step.',null,null,'active'),
('ZIP_METADATA_SUCCESS_BUT_ZERO_BYTE_FILE','Zip metadata success but zero-byte file','aiworker-os','runtime-execution-http-api','artifact','verification','artifact','stop','Metadata can indicate success while the actual zip file is missing or zero bytes.','Artifact verification checked metadata but not physical file size.','Consumer may receive unusable artifact links.','Check artifact existence, size, metadata, and consumer link separately.','Artifact preflight and smoke must verify size > 0.','If artifact size is not checked, require artifact verification.',null,null,'active'),
('DB_WRITE_WITHOUT_AI_REVIEW','DB write without AI review','common','all','database','apply','db','critical','DB write or DDL apply without AI review is unsafe.','Review gate was skipped.','Schema can be changed incorrectly or destructively.','Run AI review, static checks, and read-only compatibility checks before apply.','DB apply preflight must require AI_REVIEW=PASS.','If DDL_APPLY=YES and AI_REVIEW missing, block.',null,null,'active'),
('PUSH_WITHOUT_VERIFICATION','Push without verification','common','all','git','push','git','stop','Pushing without verification can publish broken or secret-containing changes.','Push gate did not require verification and explicit request.','Remote repository can receive broken changes.','Run verification and secret scan; push only on explicit request.','Git push preflight must require explicit user push request.','If GIT_PUSH=YES without explicit request, block.',null,null,'active'),
('RESPONSIBILITY_BOUNDARY_MIXED','Responsibility boundary mixed','common','all','architecture','design','responsibility_boundary','stop','Mixing AICM, AIWorkerOS, CX22073JW, CommonOS, and ERP responsibilities reduces maintainability.','Owner/consumer/reference/display boundary was unclear.','Business canon, runtime authority, and display layers can drift.','Restate responsibility boundaries and move change to correct owner.','Preflight must identify owner and non-owner scopes.','If canonical responsibility is unclear, require review.',null,null,'active')
on conflict (case_code) do update set
  title = excluded.title,
  target_os_code = excluded.target_os_code,
  target_app_code = excluded.target_app_code,
  target_domain_code = excluded.target_domain_code,
  phase_code = excluded.phase_code,
  mistake_category_code = excluded.mistake_category_code,
  severity_code = excluded.severity_code,
  summary_text = excluded.summary_text,
  root_cause_text = excluded.root_cause_text,
  impact_text = excluded.impact_text,
  correct_response_text = excluded.correct_response_text,
  recurrence_prevention_text = excluded.recurrence_prevention_text,
  next_check_condition_text = excluded.next_check_condition_text,
  related_report_path = excluded.related_report_path,
  related_run_dir = excluded.related_run_dir,
  status_code = excluded.status_code,
  updated_at = now();

-- ============================================================
-- 6. guardrail_scope_binding seed
-- ============================================================

insert into aiworker.guardrail_scope_binding
(rule_code, target_os_code, target_app_code, target_work_type_code, target_file_pattern, applies_to_db_write_flag, applies_to_api_post_flag, applies_to_ui_flag, applies_to_git_flag, priority_int, status_code)
values
('RULE_NO_GUESS_PATCH','common',null,'code_patch',null,false,false,false,false,10,'active'),
('RULE_DUMP_BEFORE_PATCH','common',null,'code_patch',null,false,false,false,false,20,'active'),
('RULE_MINIMAL_PATCH_SCOPE','common',null,'code_patch',null,false,false,false,false,30,'active'),
('RULE_NO_TMP_ON_TERMUX','common',null,'report_only',null,false,false,false,false,40,'active'),
('RULE_USE_PERSONA_DATABASE_URL_FOR_AIWORKER_CONTEXT','11.aiworker-os',null,'db_apply',null,true,false,false,false,10,'active'),
('RULE_SQL_REQUIRES_AI_REVIEW','common',null,'db_apply',null,true,false,false,false,10,'active'),
('RULE_NO_DB_WRITE_WITHOUT_EXPLICIT_GO','common',null,'db_apply',null,true,true,false,false,1,'active'),
('RULE_UI_PATCH_REQUIRES_UI_CENTERED_TEST','common',null,'ui_patch',null,false,false,true,false,10,'active'),
('RULE_SERVER_MUST_BOOT_BEFORE_BROWSER_CHECK','common',null,'server_patch',null,false,false,true,false,20,'active'),
('RULE_NO_PUSH_WITHOUT_EXPLICIT_REQUEST','common',null,'git_push',null,false,false,false,true,1,'active'),
('RULE_CX22073JW_NON_AGENTIC_REFERENCE_ONLY','09.CX22073JW',null,'design',null,false,false,false,false,5,'active'),
('RULE_AICM_CONSUMES_AIWORKER_DELIVERABLES','03.business-os','AICompanyManager','artifact_generation',null,false,false,false,false,5,'active'),
('RULE_AIWORKER_OWNS_DELIVERABLE_BODY_SUMMARY_ZIP','11.aiworker-os',null,'artifact_generation',null,false,false,false,false,5,'active')
on conflict do nothing;

-- ============================================================
-- 7. No runtime check result seed
-- ============================================================

-- guardrail_runtime_check_result is runtime evidence.
-- It is intentionally not seeded in GKD-3 initial seed.

-- ============================================================
-- 8. No candidate intake seed
-- ============================================================

-- guardrail_candidate_intake is for future candidate workflow.
-- It is intentionally not seeded in GKD-3 initial seed.

-- ============================================================
-- END OF GKD-3 INITIAL SEED REVIEW_ONLY_NOT_EXECUTED SQL
-- ============================================================
