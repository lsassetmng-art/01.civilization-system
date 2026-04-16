-- ============================================================
-- SHIFT MANAGER UPDATED_AT TRIGGERS
-- ============================================================

create or replace function app_shift_manager.fn_set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists trg_shift_schedule_set_updated_at
on app_shift_manager.shift_schedule;

create trigger trg_shift_schedule_set_updated_at
before update on app_shift_manager.shift_schedule
for each row
execute function app_shift_manager.fn_set_updated_at();

drop trigger if exists trg_shift_assignment_set_updated_at
on app_shift_manager.shift_assignment;

create trigger trg_shift_assignment_set_updated_at
before update on app_shift_manager.shift_assignment
for each row
execute function app_shift_manager.fn_set_updated_at();

drop trigger if exists trg_shift_share_rule_set_updated_at
on app_shift_manager.shift_share_rule;

create trigger trg_shift_share_rule_set_updated_at
before update on app_shift_manager.shift_share_rule
for each row
execute function app_shift_manager.fn_set_updated_at();

drop trigger if exists trg_erp_linkage_state_set_updated_at
on app_shift_manager.erp_linkage_state;

create trigger trg_erp_linkage_state_set_updated_at
before update on app_shift_manager.erp_linkage_state
for each row
execute function app_shift_manager.fn_set_updated_at();

drop trigger if exists trg_shift_generation_rule_set_updated_at
on app_shift_manager.shift_generation_rule;

create trigger trg_shift_generation_rule_set_updated_at
before update on app_shift_manager.shift_generation_rule
for each row
execute function app_shift_manager.fn_set_updated_at();
