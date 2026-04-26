# AICompanyManager Final Apply Sequence Plan

phase: Phase EM
status: final-apply-sequence-plan
sato_review: GO
boss_db_ok: WAITING
db_apply: false

## 1. Apply sequence

1. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7420_01_EXTENSION_PRECHECK_CANDIDATE.sql
2. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7421_02_BASE_TABLES_REFINED_CANDIDATE.sql
3. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7423_04_RLS_HELPERS_REFINED_CANDIDATE.sql
4. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7422_03_BOOTSTRAP_RPC_REFINED_CANDIDATE.sql
5. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7424_05_RLS_POLICIES_REFINED_CANDIDATE.sql
6. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7425_06_VERIFICATION_CANDIDATE.sql

Rollback candidate:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7426_90_ROLLBACK_REFINED_CANDIDATE.sql

## 2. Apply environment

Use:
- PERSONA_DATABASE_URL

Do not use:
- DATABASE_URL

## 3. Apply command form

psql "$PERSONA_DATABASE_URL" <<'SQL'
-- reviewed SQL only
SQL

## 4. Current decision

Sato review:
- GO

Boss DB OK:
- WAITING

DB apply:
- STOP

RLS apply:
- STOP

psql:
- NOT EXECUTED
