# AICompanyManager Persona DB Apply Environment Gate

phase: Phase EP
status: persona-db-apply-env-gate
generated_at: 20260427_082738

## 1. Environment

PERSONA_DATABASE_URL:
- PRESENT

DATABASE_URL:
- NOT USED BY THIS SCRIPT

## 2. Apply command

The script uses:

psql "$PERSONA_DATABASE_URL"

## 3. SQL apply order

1. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7420_01_EXTENSION_PRECHECK_CANDIDATE.sql
2. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7421_02_BASE_TABLES_REFINED_CANDIDATE.sql
3. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7423_04_RLS_HELPERS_REFINED_CANDIDATE.sql
4. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7422_03_BOOTSTRAP_RPC_REFINED_CANDIDATE.sql
5. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7424_05_RLS_POLICIES_REFINED_CANDIDATE.sql
6. /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7425_06_VERIFICATION_CANDIDATE.sql

## 4. Rollback candidate

Rollback file exists for manual emergency use:

- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/7426_90_ROLLBACK_REFINED_CANDIDATE.sql
