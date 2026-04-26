-- ============================================================
-- AICompanyManager 01 Extension Precheck Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- target_db: Persona-side DB
-- required_env_when_apply: PERSONA_DATABASE_URL
-- forbidden_env_when_apply: DATABASE_URL
-- ============================================================

create extension if not exists pgcrypto;

-- Verification candidate:
-- select extname from pg_extension where extname = 'pgcrypto';
