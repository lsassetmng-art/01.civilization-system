-- ============================================================
-- AICompanyManager 04 RLS Helpers Refined Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- ============================================================

create or replace function business.aicm_current_user_id()
returns uuid
language sql
stable
as $$
  select auth.uid()
$$;

create or replace function business.aicm_can_access_company(p_company_id uuid)
returns boolean
language sql
stable
security definer
set search_path = business, public
as $$
  select exists (
    select 1
    from business.aicm_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
  )
$$;

create or replace function business.aicm_has_company_role(p_company_id uuid, p_roles text[])
returns boolean
language sql
stable
security definer
set search_path = business, public
as $$
  select exists (
    select 1
    from business.aicm_actor_membership m
    where m.company_id = p_company_id
      and m.actor_user_id = auth.uid()
      and m.membership_status = 'active'
      and m.actor_role = any(p_roles)
  )
$$;
