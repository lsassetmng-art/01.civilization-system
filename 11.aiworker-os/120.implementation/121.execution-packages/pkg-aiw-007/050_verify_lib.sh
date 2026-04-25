#!/data/data/com.termux/files/usr/bin/bash
set -eu

PASS_COUNT=0
FAIL_COUNT=0

init_verify() {
  printf '%s\n' '============================================================'
  printf '%s\n' "$1"
  printf '%s\n' '============================================================'
}

require_persona_database_url() {
  if [ "${PERSONA_DATABASE_URL:-}" = "" ]; then
    printf '%s\n' 'FAIL: PERSONA_DATABASE_URL is not set.'
    exit 1
  fi
}

q() {
  psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 -Atqc "$1"
}

pass() {
  PASS_COUNT=$((PASS_COUNT + 1))
  printf '%s\n' "PASS: $1"
}

fail() {
  FAIL_COUNT=$((FAIL_COUNT + 1))
  printf '%s\n' "FAIL: $1"
}

check_table() {
  SCHEMA_NAME="$1"
  TABLE_NAME="$2"
  if [ "$(q "select count(*) from information_schema.tables where table_schema='${SCHEMA_NAME}' and table_name='${TABLE_NAME}'")" = "1" ]; then
    pass "table ${SCHEMA_NAME}.${TABLE_NAME}"
  else
    fail "table ${SCHEMA_NAME}.${TABLE_NAME}"
  fi
}

check_function() {
  SCHEMA_NAME="$1"
  FUNC_NAME="$2"
  if [ "$(q "select count(*) from pg_proc p join pg_namespace n on n.oid=p.pronamespace where n.nspname='${SCHEMA_NAME}' and p.proname='${FUNC_NAME}'")" -ge 1 ] 2>/dev/null; then
    pass "function ${SCHEMA_NAME}.${FUNC_NAME}"
  else
    fail "function ${SCHEMA_NAME}.${FUNC_NAME}"
  fi
}

check_role() {
  ROLE_NAME="$1"
  if [ "$(q "select count(*) from pg_roles where rolname='${ROLE_NAME}'")" = "1" ]; then
    pass "role ${ROLE_NAME}"
  else
    fail "role ${ROLE_NAME}"
  fi
}

check_index() {
  INDEX_NAME="$1"
  if [ "$(q "select count(*) from pg_class where relkind='i' and relname='${INDEX_NAME}'")" = "1" ]; then
    pass "index ${INDEX_NAME}"
  else
    fail "index ${INDEX_NAME}"
  fi
}

check_policy() {
  SCHEMA_NAME="$1"
  TABLE_NAME="$2"
  POLICY_NAME="$3"
  if [ "$(q "select count(*) from pg_policies where schemaname='${SCHEMA_NAME}' and tablename='${TABLE_NAME}' and policyname='${POLICY_NAME}'")" = "1" ]; then
    pass "policy ${POLICY_NAME}"
  else
    fail "policy ${POLICY_NAME}"
  fi
}

check_query_equals() {
  LABEL="$1"
  SQL_TEXT="$2"
  EXPECTED="$3"
  ACTUAL="$(q "$SQL_TEXT")"
  if [ "$ACTUAL" = "$EXPECTED" ]; then
    pass "$LABEL = $EXPECTED"
  else
    fail "$LABEL expected=$EXPECTED actual=$ACTUAL"
  fi
}

check_query_min() {
  LABEL="$1"
  SQL_TEXT="$2"
  MIN_EXPECTED="$3"
  ACTUAL="$(q "$SQL_TEXT")"
  if [ "$ACTUAL" -ge "$MIN_EXPECTED" ] 2>/dev/null; then
    pass "$LABEL >= $MIN_EXPECTED"
  else
    fail "$LABEL expected>=$MIN_EXPECTED actual=$ACTUAL"
  fi
}

summary_exit() {
  printf '%s\n' '------------------------------------------------------------'
  printf '%s\n' "PASS_COUNT=$PASS_COUNT"
  printf '%s\n' "FAIL_COUNT=$FAIL_COUNT"
  printf '%s\n' '------------------------------------------------------------'
  if [ "$FAIL_COUNT" -ne 0 ]; then
    exit 1
  fi
}
