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
\echo STATICART PHASE1 INTEGRITY VERIFY
\echo ============================================================

-- reader / viewer continuity separation
select
  case
    when exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'user_reader_progress'
    )
    and exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'user_viewer_progress'
    )
    then 'OK  reader/viewer continuity tables are separate'
    else 'NG  reader/viewer continuity separation missing'
  end
;

-- projection table presence
select
  case
    when exists (
      select 1
      from information_schema.tables
      where table_schema = 'staticart'
        and table_name = 'asset_exhibition_projection'
    )
    then 'OK  projection table exists'
    else 'NG  projection table missing'
  end
;

-- key column existence checks
with expected_column(table_name, column_name) as (
  values
    ('asset_master', 'asset_id'),
    ('asset_master', 'lifecycle_state'),
    ('asset_version', 'is_visible'),
    ('asset_file', 'file_role'),
    ('asset_rights_policy', 'region_mode'),
    ('asset_sales_offer', 'sales_state'),
    ('asset_subscription_rule', 'subscription_state'),
    ('asset_review_request', 'review_status'),
    ('user_asset_entitlement', 'effective_entitlement_state'),
    ('user_reader_progress', 'current_locator'),
    ('user_viewer_progress', 'current_page_no'),
    ('asset_exhibition_projection', 'projection_status'),
    ('asset_audit_event', 'event_type')
)
select
  case
    when c.column_name is not null
      then 'OK  column ' || e.table_name || '.' || e.column_name
    else 'NG  column ' || e.table_name || '.' || e.column_name
  end
from expected_column e
left join information_schema.columns c
  on c.table_schema = 'staticart'
 and c.table_name = e.table_name
 and c.column_name = e.column_name
order by e.table_name, e.column_name;
SQL
