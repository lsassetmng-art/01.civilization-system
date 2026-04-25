begin;

create or replace function aiworker.fn_default_summary_code_from_result_code(
  p_result_code text
)
returns text
language sql
immutable
as $$
  select case
    when p_result_code = 'OK_APPLIED' then 'SUM_APPLIED'
    when p_result_code = 'OK_NOOP_REPLAY' then 'SUM_ALREADY_APPLIED'
    when p_result_code = 'OK_REVIEW_REQUIRED' then 'SUM_REVIEW_REQUIRED'
    when p_result_code = 'NG_GATE_DENIED' then 'SUM_GATE_DENIED'
    when p_result_code = 'NG_APPROVAL_REQUIRED' then 'SUM_APPROVAL_REQUIRED'
    when p_result_code = 'NG_AUDIT_REQUIRED' then 'SUM_AUDIT_REQUIRED'
    when p_result_code = 'NG_ILLEGAL_TRANSITION' then 'SUM_ILLEGAL_TRANSITION'
    when p_result_code = 'NG_VALIDATION_FAILED' then 'SUM_VALIDATION_FAILED'
    when p_result_code = 'NG_WORKER_NOT_ELIGIBLE' then 'SUM_WORKER_NOT_ELIGIBLE'
    when p_result_code = 'NG_INTERNAL_ERROR' then 'SUM_INTERNAL_ERROR'
    else 'SUM_INTERNAL_ERROR'
  end
$$;

create or replace function aiworker.fn_default_summary_band_from_result_code(
  p_result_code text
)
returns text
language sql
immutable
as $$
  select case
    when p_result_code = 'OK_APPLIED' then 'STANDARD'
    when p_result_code = 'OK_NOOP_REPLAY' then 'MINIMAL'
    when p_result_code = 'OK_REVIEW_REQUIRED' then 'REVIEW'
    when p_result_code = 'NG_GATE_DENIED' then 'MINIMAL'
    when p_result_code = 'NG_APPROVAL_REQUIRED' then 'REVIEW'
    when p_result_code = 'NG_AUDIT_REQUIRED' then 'REVIEW'
    when p_result_code = 'NG_ILLEGAL_TRANSITION' then 'STANDARD'
    when p_result_code = 'NG_VALIDATION_FAILED' then 'STANDARD'
    when p_result_code = 'NG_WORKER_NOT_ELIGIBLE' then 'STANDARD'
    when p_result_code = 'NG_INTERNAL_ERROR' then 'MINIMAL'
    else 'MINIMAL'
  end
$$;

commit;
