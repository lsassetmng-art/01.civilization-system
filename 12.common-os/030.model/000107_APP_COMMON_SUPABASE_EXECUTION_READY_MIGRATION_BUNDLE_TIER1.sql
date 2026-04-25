-- ============================================================
-- APP_COMMON SUPABASE EXECUTION READY MIGRATION BUNDLE TIER1
-- CommonOS / app_common / bundle order draft
-- ============================================================

\set ON_ERROR_STOP on

BEGIN;

\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000100_APP_COMMON_REVIEWED_CANONICAL_DDL_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000103_APP_COMMON_RLS_SQL_DRAFT_TIER1.sql
\i /data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model/000104_APP_COMMON_PUBLISHED_READ_VIEW_SQL_DRAFT_TIER1.sql

COMMIT;
