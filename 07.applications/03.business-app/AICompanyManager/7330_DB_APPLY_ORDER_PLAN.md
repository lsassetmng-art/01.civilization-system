# AICompanyManager DB Apply Order Plan

phase: Phase EI
status: db-apply-order-plan
db_apply: false
psql: false

## 1. Apply order candidate

Apply順序は以下を推奨する。

### Step 0: environment gate

- Confirm PERSONA_DATABASE_URL
- Confirm not DATABASE_URL
- Confirm Boss DB OK
- Confirm 佐藤（DB担当）GO

### Step 1: extension precheck

- check pgcrypto
- if allowed, create extension if not exists pgcrypto

### Step 2: base DDL

- create schema business
- create company table
- create actor_membership table
- create department table
- create organization table
- create organization robot assignment table
- create ledger / file / csv / review / workflow tables
- create indexes

### Step 3: bootstrap strategy

Required before RLS hardening:
- define first owner membership creation route
- choose one:
  - service-role endpoint
  - security definer RPC
  - controlled trigger

### Step 4: RLS helper functions

- aicm_current_user_id
- aicm_can_access_company
- aicm_has_company_role

### Step 5: enable RLS

- enable row level security on all tables

### Step 6: policies

- company policies
- membership policies
- department policies
- organization policies
- ledger policies
- file metadata policies
- csv policies
- review policies
- workflow policies

### Step 7: verification

- table existence check
- policy existence check
- helper function existence check
- no aiemployee naming check
- RLS enabled check
- smoke select as permitted actor if test actor exists

### Step 8: API connection preparation

- do not connect real API yet
- prepare repository API adapter only after DB/RLS PASS

## 2. Do not do in same phase

Do not mix:
- DB apply
- real API connect
- live AIWorkerOS call

## 3. Current decision

Current decision:
- STOP

Reason:
- apply order is plan only
- no psql in this phase
