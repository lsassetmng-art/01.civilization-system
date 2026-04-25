#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

psql "$PERSONA_DATABASE_URL" <<'SQL'
\pset footer off
\pset tuples_only on

\echo ============================================================
\echo STATICART PHASE1 INDEX VERIFY
\echo ============================================================

with expected_index(index_name) as (
  values
    ('idx_staticart_asset_master_creator_lifecycle'),
    ('idx_staticart_asset_master_type_lifecycle'),
    ('uq_staticart_asset_version_one_visible'),
    ('idx_staticart_asset_localization_lang'),
    ('idx_staticart_asset_category_map_category'),
    ('idx_staticart_asset_tag_map_tag'),
    ('idx_staticart_asset_review_request_asset'),
    ('idx_staticart_asset_audit_event_asset'),
    ('idx_staticart_asset_audit_event_event_type'),
    ('idx_staticart_user_library_projection_opened'),
    ('idx_staticart_user_reader_progress_opened'),
    ('idx_staticart_user_viewer_progress_opened'),
    ('idx_staticart_user_asset_annotation_user_asset'),
    ('idx_staticart_asset_exhibition_projection_status')
)
select
  case
    when c.relname is not null then 'OK  index ' || e.index_name
    else 'NG  index ' || e.index_name
  end
from expected_index e
left join pg_class c
  on c.relname = e.index_name
left join pg_namespace n
  on n.oid = c.relnamespace
 and n.nspname = 'staticart'
 and c.relkind = 'i'
order by e.index_name;
SQL
