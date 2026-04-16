-- ============================================================
-- SHIFT MANAGER RLS HELPERS
-- ============================================================

create or replace function app_shift_manager.fn_current_person_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_person_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_current_company_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_company_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_has_role(p_role text)
returns boolean
language sql
stable
as $$
  select coalesce(
    p_role = any(string_to_array(current_setting('app.current_roles', true), ',')),
    false
  )
$$;

create or replace function app_shift_manager.fn_can_view_publication(p_publication_id uuid)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.active_flag = true
    )
$$;

create or replace function app_shift_manager.fn_can_view_person_in_publication(
  p_publication_id uuid,
  p_visible_person_id uuid
)
returns boolean
language sql
stable
as $$
  select
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or exists (
      select 1
      from app_shift_manager.shift_view_scope vs
      where vs.publication_id = p_publication_id
        and vs.viewer_person_id = app_shift_manager.fn_current_person_id()
        and vs.visible_person_id = p_visible_person_id
        and vs.active_flag = true
    )
$$;
