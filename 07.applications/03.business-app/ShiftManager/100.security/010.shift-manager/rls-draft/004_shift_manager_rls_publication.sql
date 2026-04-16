-- ============================================================
-- SHIFT MANAGER RLS: PUBLICATION SIDE
-- ============================================================

drop policy if exists p_shift_publication_select on app_shift_manager.shift_publication;
create policy p_shift_publication_select
on app_shift_manager.shift_publication
for select
using (
  app_shift_manager.fn_can_view_publication(publication_id)
);

drop policy if exists p_shift_publication_insert_manager on app_shift_manager.shift_publication;
create policy p_shift_publication_insert_manager
on app_shift_manager.shift_publication
for insert
with check (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
);

drop policy if exists p_shift_publication_assignment_select on app_shift_manager.shift_publication_assignment;
create policy p_shift_publication_assignment_select
on app_shift_manager.shift_publication_assignment
for select
using (
  app_shift_manager.fn_can_view_person_in_publication(publication_id, person_id)
);

drop policy if exists p_shift_publish_history_select_manager on app_shift_manager.shift_publish_history;
create policy p_shift_publish_history_select_manager
on app_shift_manager.shift_publish_history
for select
using (
  app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
  or app_shift_manager.fn_has_role('department_manager')
);
