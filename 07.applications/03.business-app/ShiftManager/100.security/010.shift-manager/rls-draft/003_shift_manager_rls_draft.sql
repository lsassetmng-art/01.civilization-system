-- ============================================================
-- SHIFT MANAGER RLS: DRAFT SIDE
-- ============================================================

drop policy if exists p_shift_schedule_select_draft_manager on app_shift_manager.shift_schedule;
create policy p_shift_schedule_select_draft_manager
on app_shift_manager.shift_schedule
for select
using (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    created_by_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
);

drop policy if exists p_shift_schedule_insert_draft_manager on app_shift_manager.shift_schedule;
create policy p_shift_schedule_insert_draft_manager
on app_shift_manager.shift_schedule
for insert
with check (
  company_id = app_shift_manager.fn_current_company_id()
  and (
    app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
);

drop policy if exists p_shift_schedule_update_draft_manager on app_shift_manager.shift_schedule;
create policy p_shift_schedule_update_draft_manager
on app_shift_manager.shift_schedule
for update
using (
  status = 'draft'
  and company_id = app_shift_manager.fn_current_company_id()
  and (
    created_by_person_id = app_shift_manager.fn_current_person_id()
    or app_shift_manager.fn_has_role('enterprise_admin')
    or app_shift_manager.fn_has_role('shift_admin')
    or app_shift_manager.fn_has_role('department_manager')
    or app_shift_manager.fn_has_role('team_leader')
  )
)
with check (
  status = 'draft'
  and company_id = app_shift_manager.fn_current_company_id()
);

drop policy if exists p_shift_assignment_select_draft_manager on app_shift_manager.shift_assignment;
create policy p_shift_assignment_select_draft_manager
on app_shift_manager.shift_assignment
for select
using (
  exists (
    select 1
    from app_shift_manager.shift_schedule ss
    where ss.schedule_id = shift_assignment.schedule_id
      and ss.company_id = app_shift_manager.fn_current_company_id()
      and (
        ss.created_by_person_id = app_shift_manager.fn_current_person_id()
        or app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
        or app_shift_manager.fn_has_role('department_manager')
        or app_shift_manager.fn_has_role('team_leader')
      )
  )
);

drop policy if exists p_shift_assignment_write_draft_manager on app_shift_manager.shift_assignment;
create policy p_shift_assignment_write_draft_manager
on app_shift_manager.shift_assignment
for all
using (
  exists (
    select 1
    from app_shift_manager.shift_schedule ss
    where ss.schedule_id = shift_assignment.schedule_id
      and ss.status = 'draft'
      and ss.company_id = app_shift_manager.fn_current_company_id()
      and (
        ss.created_by_person_id = app_shift_manager.fn_current_person_id()
        or app_shift_manager.fn_has_role('enterprise_admin')
        or app_shift_manager.fn_has_role('shift_admin')
        or app_shift_manager.fn_has_role('department_manager')
        or app_shift_manager.fn_has_role('team_leader')
      )
  )
)
with check (
  exists (
    select 1
    from app_shift_manager.shift_schedule ss
    where ss.schedule_id = shift_assignment.schedule_id
      and ss.status = 'draft'
      and ss.company_id = app_shift_manager.fn_current_company_id()
  )
);
