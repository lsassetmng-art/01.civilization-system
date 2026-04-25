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
\echo STATICART PHASE1 TABLE VERIFY
\echo ============================================================

with expected_table(table_name) as (
  values
    ('asset_master'),
    ('asset_version'),
    ('asset_file'),
    ('asset_localization'),
    ('asset_category_map'),
    ('asset_tag_map'),
    ('asset_rights_policy'),
    ('asset_sales_offer'),
    ('asset_subscription_rule'),
    ('asset_review_request'),
    ('asset_review_decision'),
    ('user_asset_entitlement'),
    ('user_library_projection'),
    ('user_reader_progress'),
    ('user_viewer_progress'),
    ('user_asset_annotation'),
    ('user_asset_favorite'),
    ('asset_exhibition_projection'),
    ('asset_audit_event')
)
select
  case
    when c.relname is not null then 'OK  table ' || e.table_name
    else 'NG  table ' || e.table_name
  end
from expected_table e
left join pg_class c
  on c.relname = e.table_name
left join pg_namespace n
  on n.oid = c.relnamespace
 and n.nspname = 'staticart'
 and c.relkind = 'r'
order by e.table_name;
SQL
