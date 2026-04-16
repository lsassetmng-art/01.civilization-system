-- ============================================================
-- SHIFT MANAGER RLS: NOTIFICATION
-- ============================================================

drop policy if exists p_shift_notification_select_self on app_shift_manager.shift_notification;
create policy p_shift_notification_select_self
on app_shift_manager.shift_notification
for select
using (
  target_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);

drop policy if exists p_shift_notification_update_self_read on app_shift_manager.shift_notification;
create policy p_shift_notification_update_self_read
on app_shift_manager.shift_notification
for update
using (
  target_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
)
with check (
  target_person_id = app_shift_manager.fn_current_person_id()
  or app_shift_manager.fn_has_role('enterprise_admin')
  or app_shift_manager.fn_has_role('shift_admin')
);
