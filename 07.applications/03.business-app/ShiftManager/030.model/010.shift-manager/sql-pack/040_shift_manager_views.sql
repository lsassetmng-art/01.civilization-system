-- ============================================================
-- SHIFT MANAGER VIEWS
-- ============================================================

create or replace view app_shift_manager.v_current_active_publication as
select
  sp.schedule_id,
  sp.publication_id,
  sp.publication_version_no,
  sp.published_at
from app_shift_manager.shift_publication sp
where sp.publication_status = 'active';

create or replace view app_shift_manager.v_publication_export_status as
select
  sp.publication_id,
  sp.schedule_id,
  sp.publication_version_no,
  es.export_status,
  es.export_mode,
  es.exported_at,
  es.last_error_code,
  es.last_error_message
from app_shift_manager.shift_publication sp
left join app_shift_manager.erp_linkage_state es
  on es.publication_id = sp.publication_id;
