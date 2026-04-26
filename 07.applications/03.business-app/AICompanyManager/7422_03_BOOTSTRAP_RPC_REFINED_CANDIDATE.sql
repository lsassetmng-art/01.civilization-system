-- ============================================================
-- AICompanyManager 03 Bootstrap / Review / Workflow RPC Refined Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- target_db: Persona-side DB
-- ============================================================

create or replace function business.aicm_create_company_with_owner(
  p_company_name text,
  p_business_domain text default ''
)
returns uuid
language plpgsql
security definer
set search_path = business, public
as $$
declare
  v_user_id uuid;
  v_company_id uuid;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'AUTH_REQUIRED';
  end if;

  insert into business.aicm_company(company_name, business_domain)
  values (p_company_name, coalesce(p_business_domain, ''))
  returning company_id into v_company_id;

  insert into business.aicm_actor_membership(company_id, actor_user_id, actor_role, membership_status)
  values (v_company_id, v_user_id, 'Owner', 'active');

  return v_company_id;
end;
$$;

create or replace function business.aicm_apply_review_action(
  p_review_item_id uuid,
  p_action_type text,
  p_comment text default '',
  p_idempotency_key text default null
)
returns uuid
language plpgsql
security definer
set search_path = business, public
as $$
declare
  v_user_id uuid;
  v_company_id uuid;
  v_current_status text;
  v_after_status text;
  v_action_id uuid;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'AUTH_REQUIRED';
  end if;

  select company_id, review_status
    into v_company_id, v_current_status
  from business.aicm_review_item
  where review_item_id = p_review_item_id
  for update;

  if v_company_id is null then
    raise exception 'REVIEW_ITEM_NOT_FOUND';
  end if;

  if not business.aicm_has_company_role(v_company_id, array['Owner','Admin','Manager','Leader','Reviewer']) then
    raise exception 'FORBIDDEN';
  end if;

  if p_idempotency_key is not null and p_idempotency_key <> '' then
    select review_action_id
      into v_action_id
    from business.aicm_review_action
    where company_id = v_company_id
      and idempotency_key = p_idempotency_key;

    if v_action_id is not null then
      return v_action_id;
    end if;
  end if;

  if v_current_status in ('承認済み','完了','取消') then
    raise exception 'REVIEW_ALREADY_FINALIZED';
  end if;

  if p_action_type = 'approve' then
    v_after_status := '承認済み';
  elsif p_action_type = 'reject' then
    v_after_status := '差し戻し';
  elsif p_action_type = 'request_revision' then
    v_after_status := '修正待ち';
  elsif p_action_type = 'comment' then
    v_after_status := v_current_status;
  else
    raise exception 'INVALID_REVIEW_ACTION';
  end if;

  update business.aicm_review_item
  set review_status = v_after_status,
      updated_at = now()
  where review_item_id = p_review_item_id;

  insert into business.aicm_review_action(
    review_item_id,
    company_id,
    action_type,
    action_status_after,
    actor_user_id,
    actor_role,
    idempotency_key,
    comment
  )
  values (
    p_review_item_id,
    v_company_id,
    p_action_type,
    v_after_status,
    v_user_id,
    'Reviewer',
    p_idempotency_key,
    coalesce(p_comment, '')
  )
  returning review_action_id into v_action_id;

  return v_action_id;
end;
$$;

create or replace function business.aicm_start_workflow_local_stub(
  p_company_id uuid,
  p_department_id uuid default null,
  p_ledger_row_id uuid default null,
  p_request_payload jsonb default '{}'::jsonb
)
returns uuid
language plpgsql
security definer
set search_path = business, public
as $$
declare
  v_user_id uuid;
  v_run_id uuid;
begin
  v_user_id := auth.uid();

  if v_user_id is null then
    raise exception 'AUTH_REQUIRED';
  end if;

  if not business.aicm_has_company_role(p_company_id, array['Owner','Admin','Manager','Leader']) then
    raise exception 'FORBIDDEN';
  end if;

  insert into business.aicm_workflow_run(
    company_id,
    department_id,
    ledger_row_id,
    workflow_type,
    workflow_status,
    live_aiworkeros_call,
    real_api_connect,
    request_payload
  )
  values (
    p_company_id,
    p_department_id,
    p_ledger_row_id,
    'local_stub',
    'queued',
    false,
    false,
    coalesce(p_request_payload, '{}'::jsonb)
  )
  returning workflow_run_id into v_run_id;

  return v_run_id;
end;
$$;
