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
\echo STATICART PHASE1 SCHEMA / ENUM VERIFY
\echo ============================================================

with expected_schema as (
  select 'staticart'::text as schema_name
),
actual_schema as (
  select nspname as schema_name
  from pg_namespace
  where nspname = 'staticart'
)
select
  case
    when exists(select 1 from actual_schema) then 'OK  schema staticart exists'
    else 'NG  schema staticart missing'
  end
;

with expected_enum(type_name) as (
  values
    ('asset_type'),
    ('lifecycle_state'),
    ('sales_state'),
    ('subscription_state'),
    ('entitlement_state'),
    ('review_status'),
    ('file_role'),
    ('projection_status')
)
select
  case
    when t.typname is not null then 'OK  enum ' || e.type_name
    else 'NG  enum ' || e.type_name
  end
from expected_enum e
left join pg_type t
  on t.typname = e.type_name
left join pg_namespace n
  on n.oid = t.typnamespace
 and n.nspname = 'staticart'
order by e.type_name;
SQL
