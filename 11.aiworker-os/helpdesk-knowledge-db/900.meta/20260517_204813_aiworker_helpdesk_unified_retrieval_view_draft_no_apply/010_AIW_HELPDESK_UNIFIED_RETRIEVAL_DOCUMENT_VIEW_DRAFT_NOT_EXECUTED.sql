-- ============================================================
-- AIWorkerOS Helpdesk Unified Retrieval Document View Draft
-- NOT EXECUTED
-- DDL_APPLY=NO
-- Purpose:
--   Expose Helpdesk knowledge as unified retrieval documents for
--   AIWorkerOS internal brain retrieval before API/Portal transport.
-- ============================================================

create or replace view aiworker.v_helpdesk_retrieval_document as

-- ------------------------------------------------------------
-- 1. App support profile documents
-- ------------------------------------------------------------
select
  ('app:' || app.app_code)::text as retrieval_document_id,
  'helpdesk_supported_app'::text as source_table,
  app.supported_app_id::text as source_id,
  app.app_code::text as app_code,
  app.default_locale::text as locale,
  'app_profile'::text as document_kind,
  app.app_display_name::text as title,
  coalesce(profile.support_summary, app.note, app.app_display_name)::text as body,
  jsonb_build_array(app.app_code, app.app_display_name, app.app_category)::jsonb as keywords,
  concat_ws(
    E'\n',
    app.app_code,
    app.app_display_name,
    app.app_category,
    profile.support_summary,
    app.note
  )::text as searchable_text,
  null::text as screen_code,
  null::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  'verified'::text as confidence_level,
  app.sort_order::integer as priority,
  case when app.public_faq_enabled then 'public' else 'private' end::text as visibility,
  false::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  app.support_enabled::boolean as is_active,
  app.updated_at::timestamptz as updated_at
from aiworker.helpdesk_supported_app app
left join aiworker.helpdesk_app_support_profile profile
  on profile.app_code = app.app_code
 and profile.is_active = true
where app.support_enabled = true
  and app.support_status = 'active'

union all

-- ------------------------------------------------------------
-- 2. QA documents
-- ------------------------------------------------------------
select
  ('qa:' || qa.qa_entry_id::text)::text as retrieval_document_id,
  'helpdesk_qa_entry'::text as source_table,
  qa.qa_entry_id::text as source_id,
  qa.app_code::text as app_code,
  qa.locale::text as locale,
  'qa'::text as document_kind,
  qa.question::text as title,
  qa.answer::text as body,
  qa.keywords::jsonb as keywords,
  concat_ws(
    E'\n',
    qa.question,
    qa.answer,
    qa.keywords::text,
    qa.screen_code,
    qa.flow_code,
    qa.source_type,
    qa.source_ref
  )::text as searchable_text,
  qa.screen_code::text as screen_code,
  qa.flow_code::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  qa.confidence_level::text as confidence_level,
  qa.sort_order::integer as priority,
  qa.visibility::text as visibility,
  false::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  qa.is_active::boolean as is_active,
  qa.updated_at::timestamptz as updated_at
from aiworker.helpdesk_qa_entry qa
where qa.is_active = true
  and (qa.effective_from is null or qa.effective_from <= now())
  and (qa.effective_to is null or qa.effective_to >= now())

union all

-- ------------------------------------------------------------
-- 3. Screen knowledge documents
-- ------------------------------------------------------------
select
  ('screen:' || sk.screen_knowledge_id::text)::text as retrieval_document_id,
  'helpdesk_screen_knowledge'::text as source_table,
  sk.screen_knowledge_id::text as source_id,
  sk.app_code::text as app_code,
  sk.locale::text as locale,
  'screen'::text as document_kind,
  sk.screen_name::text as title,
  concat_ws(
    E'\n',
    sk.screen_purpose,
    sk.helpdesk_answer_policy
  )::text as body,
  jsonb_build_array(sk.screen_code, sk.screen_name)::jsonb as keywords,
  concat_ws(
    E'\n',
    sk.screen_code,
    sk.screen_name,
    sk.screen_purpose,
    sk.main_actions::text,
    sk.required_inputs::text,
    sk.common_mistakes::text,
    sk.related_flow_codes::text,
    sk.related_error_codes::text,
    sk.dangerous_actions::text,
    sk.helpdesk_answer_policy
  )::text as searchable_text,
  sk.screen_code::text as screen_code,
  null::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  'standard'::text as confidence_level,
  sk.sort_order::integer as priority,
  'private'::text as visibility,
  case when jsonb_array_length(sk.dangerous_actions) > 0 then true else false end::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  sk.is_active::boolean as is_active,
  sk.updated_at::timestamptz as updated_at
from aiworker.helpdesk_screen_knowledge sk
where sk.is_active = true

union all

-- ------------------------------------------------------------
-- 4. Operation flow documents
-- ------------------------------------------------------------
select
  ('flow:' || oflow.operation_flow_id::text)::text as retrieval_document_id,
  'helpdesk_operation_flow'::text as source_table,
  oflow.operation_flow_id::text as source_id,
  oflow.app_code::text as app_code,
  oflow.locale::text as locale,
  'operation_flow'::text as document_kind,
  (oflow.flow_name || ' step ' || oflow.step_order::text)::text as title,
  concat_ws(
    E'\n',
    oflow.user_action,
    oflow.system_action,
    oflow.success_condition,
    oflow.failure_condition,
    oflow.retry_policy,
    oflow.rollback_or_recovery_policy
  )::text as body,
  jsonb_build_array(oflow.flow_code, oflow.flow_name, oflow.entry_screen_code)::jsonb as keywords,
  concat_ws(
    E'\n',
    oflow.flow_code,
    oflow.flow_name,
    oflow.entry_screen_code,
    oflow.step_order::text,
    oflow.user_action,
    oflow.system_action,
    oflow.success_condition,
    oflow.failure_condition,
    oflow.retry_policy,
    oflow.rollback_or_recovery_policy
  )::text as searchable_text,
  oflow.entry_screen_code::text as screen_code,
  oflow.flow_code::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  'standard'::text as confidence_level,
  oflow.step_order::integer as priority,
  'private'::text as visibility,
  false::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  oflow.is_active::boolean as is_active,
  oflow.updated_at::timestamptz as updated_at
from aiworker.helpdesk_operation_flow oflow
where oflow.is_active = true

union all

-- ------------------------------------------------------------
-- 5. Error pattern documents
-- ------------------------------------------------------------
select
  ('error:' || ep.error_pattern_id::text)::text as retrieval_document_id,
  'helpdesk_error_pattern'::text as source_table,
  ep.error_pattern_id::text as source_id,
  ep.app_code::text as app_code,
  ep.locale::text as locale,
  'error_pattern'::text as document_kind,
  coalesce(ep.error_code, ep.error_pattern)::text as title,
  concat_ws(
    E'\n',
    ep.error_pattern,
    ep.probable_cause,
    ep.user_facing_explanation,
    ep.safe_next_action,
    ep.developer_action
  )::text as body,
  jsonb_build_array(ep.error_code, ep.error_pattern, ep.related_runbook_code)::jsonb as keywords,
  concat_ws(
    E'\n',
    ep.error_code,
    ep.error_pattern,
    ep.detected_from,
    ep.probable_cause,
    ep.user_facing_explanation,
    ep.developer_action,
    ep.safe_next_action,
    ep.related_runbook_code
  )::text as searchable_text,
  null::text as screen_code,
  null::text as flow_code,
  ep.error_code::text as error_code,
  ep.related_runbook_code::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  'standard'::text as confidence_level,
  case when ep.escalation_required then 10 else 100 end::integer as priority,
  'private'::text as visibility,
  ep.escalation_required::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  ep.is_active::boolean as is_active,
  ep.updated_at::timestamptz as updated_at
from aiworker.helpdesk_error_pattern ep
where ep.is_active = true

union all

-- ------------------------------------------------------------
-- 6. Troubleshooting runbook documents
-- ------------------------------------------------------------
select
  ('runbook:' || rb.runbook_id::text)::text as retrieval_document_id,
  'helpdesk_troubleshooting_runbook'::text as source_table,
  rb.runbook_id::text as source_id,
  rb.app_code::text as app_code,
  rb.locale::text as locale,
  'runbook'::text as document_kind,
  rb.title::text as title,
  concat_ws(
    E'\n',
    rb.trigger_condition,
    rb.check_steps::text,
    rb.safe_user_steps::text,
    rb.developer_steps::text,
    rb.stop_condition,
    rb.escalation_condition,
    rb.evidence_required::text
  )::text as body,
  jsonb_build_array(rb.runbook_code, rb.title)::jsonb as keywords,
  concat_ws(
    E'\n',
    rb.runbook_code,
    rb.title,
    rb.trigger_condition,
    rb.check_steps::text,
    rb.safe_user_steps::text,
    rb.developer_steps::text,
    rb.stop_condition,
    rb.escalation_condition,
    rb.evidence_required::text
  )::text as searchable_text,
  null::text as screen_code,
  null::text as flow_code,
  null::text as error_code,
  rb.runbook_code::text as runbook_code,
  null::text as rule_code,
  null::text as template_code,
  'standard'::text as confidence_level,
  100::integer as priority,
  'private'::text as visibility,
  case when rb.escalation_condition is not null then true else false end::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  rb.is_active::boolean as is_active,
  rb.updated_at::timestamptz as updated_at
from aiworker.helpdesk_troubleshooting_runbook rb
where rb.is_active = true

union all

-- ------------------------------------------------------------
-- 7. Escalation rule documents
-- ------------------------------------------------------------
select
  ('escalation:' || er.escalation_rule_id::text)::text as retrieval_document_id,
  'helpdesk_escalation_rule'::text as source_table,
  er.escalation_rule_id::text as source_id,
  er.app_code::text as app_code,
  er.locale::text as locale,
  'escalation_rule'::text as document_kind,
  er.rule_code::text as title,
  concat_ws(
    E'\n',
    er.trigger_condition,
    er.risk_level,
    er.target_route,
    er.user_message_template_code
  )::text as body,
  jsonb_build_array(er.rule_code, er.risk_level, er.target_route, er.user_message_template_code)::jsonb as keywords,
  concat_ws(
    E'\n',
    er.rule_code,
    er.risk_level,
    er.trigger_condition,
    er.target_route,
    er.user_message_template_code
  )::text as searchable_text,
  null::text as screen_code,
  null::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  er.rule_code::text as rule_code,
  er.user_message_template_code::text as template_code,
  'verified'::text as confidence_level,
  er.priority::integer as priority,
  'internal'::text as visibility,
  true::boolean as escalation_required,
  er.blocks_ai_answer::boolean as blocks_ai_answer,
  er.is_active::boolean as is_active,
  er.updated_at::timestamptz as updated_at
from aiworker.helpdesk_escalation_rule er
where er.is_active = true

union all

-- ------------------------------------------------------------
-- 8. Answer template documents
-- ------------------------------------------------------------
select
  ('template:' || at.answer_template_id::text)::text as retrieval_document_id,
  'helpdesk_answer_template'::text as source_table,
  at.answer_template_id::text as source_id,
  null::text as app_code,
  at.locale::text as locale,
  'answer_template'::text as document_kind,
  at.template_code::text as title,
  concat_ws(
    E'\n',
    at.use_case,
    at.answer_structure::text,
    at.required_disclaimer,
    at.forbidden_phrases::text,
    at.example_response
  )::text as body,
  jsonb_build_array(at.template_code, at.use_case)::jsonb as keywords,
  concat_ws(
    E'\n',
    at.template_code,
    at.use_case,
    at.answer_structure::text,
    at.required_disclaimer,
    at.forbidden_phrases::text,
    at.example_response
  )::text as searchable_text,
  null::text as screen_code,
  null::text as flow_code,
  null::text as error_code,
  null::text as runbook_code,
  null::text as rule_code,
  at.template_code::text as template_code,
  'verified'::text as confidence_level,
  100::integer as priority,
  'internal'::text as visibility,
  false::boolean as escalation_required,
  false::boolean as blocks_ai_answer,
  at.is_active::boolean as is_active,
  at.updated_at::timestamptz as updated_at
from aiworker.helpdesk_answer_template at
where at.is_active = true;

comment on view aiworker.v_helpdesk_retrieval_document is
'Unified Helpdesk retrieval document read model for AIWorkerOS internal brain retrieval. API is later transport, not the brain core.';
