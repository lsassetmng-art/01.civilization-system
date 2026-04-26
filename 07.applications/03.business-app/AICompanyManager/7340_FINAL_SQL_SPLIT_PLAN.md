# AICompanyManager Final SQL Split Plan

phase: Phase EJ
status: final-sql-split-plan
db_apply: false
rls_apply: false
psql: false

## 1. 分割方針

DB適用時は、1本巨大SQLではなく、安全確認しやすい単位に分割する。

## 2. 推奨ファイル分割

### 01_extension_precheck.sql

Purpose:
- pgcrypto確認
- gen_random_uuid準備

Contains:
- create extension if not exists pgcrypto

### 02_base_tables.sql

Purpose:
- schema / tables / indexes

Contains:
- business schema
- all aicm tables
- indexes

Does not contain:
- RLS policy
- destructive rollback

### 03_bootstrap_rpc.sql

Purpose:
- first company owner membership bootstrap

Contains:
- create_company_with_owner RPC or equivalent candidate
- service-role boundary comment

Status:
- not yet created. Needs design.

### 04_rls_helpers.sql

Purpose:
- helper functions

Contains:
- aicm_current_user_id
- aicm_can_access_company
- aicm_has_company_role

### 05_rls_enable_and_policies.sql

Purpose:
- enable RLS and create policies

Contains:
- alter table enable row level security
- create policy statements

### 06_verification.sql

Purpose:
- DB apply verification

Contains:
- table existence checks
- policy checks
- RLS enabled checks
- function checks

### 90_rollback.sql

Purpose:
- rollback

Contains:
- drop policies
- drop tables
- drop helper functions

## 3. 必須追加設計

Before apply, add:
- bootstrap RPC candidate
- idempotent review action RPC candidate
- workflow start RPC candidate or explicit local_stub-only decision

## 4. Current decision

Final SQL split:
- PLANNED

DB apply:
- STOP

RLS apply:
- STOP
