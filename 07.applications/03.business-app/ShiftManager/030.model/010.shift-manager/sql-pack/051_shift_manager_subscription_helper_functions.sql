-- ============================================================
-- SHIFT MANAGER SUBSCRIPTION HELPERS
-- ============================================================

create or replace function app_shift_manager.fn_current_site_license_id()
returns uuid
language sql
stable
as $$
  select nullif(current_setting('app.current_site_license_id', true), '')::uuid
$$;

create or replace function app_shift_manager.fn_current_subscription_status()
returns text
language sql
stable
as $$
  select nullif(current_setting('app.current_subscription_status', true), '')
$$;

create or replace function app_shift_manager.fn_is_feature_allowed(p_feature_code text)
returns boolean
language sql
stable
as $$
  select case
    when app_shift_manager.fn_current_subscription_status() in ('trial', 'active', 'grace') then true
    when app_shift_manager.fn_current_subscription_status() = 'inactive' then
      p_feature_code in ('view_self_shift', 'view_visible_publication', 'view_notifications')
    else false
  end
$$;
