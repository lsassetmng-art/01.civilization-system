# ============================================================
# CIVILIZATION ENUM AND CODE MASTER REGISTRATION ORDER
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the preparation order for enum, status, and code master registration.

## 2. Scope

This document governs preparation for:

- domain code master
- status dictionary
- action scope master
- error code family master
- type dictionaries
- reusable enum groups

## 3. Canonical Registration Order

Recommended order:

1. domain_code_master
2. lifecycle_status
3. workflow_status
4. execution_status
5. approval_status
6. action_scope_master
7. error_code_family
8. facility_family
9. listing_type
10. law_state
11. war_state
12. education_state
13. career_state
14. reward_type
15. skill_category
16. organization_role_type
17. communication_notice_type

## 4. Rule

Status or enum values used by downstream tables
must be prepared before seed or workflow preparation starts.

## 5. Exact Preparation Checklist

- duplicate code audit prepared
- supersede rule prepared
- inline magic string removal target identified
- cross-domain reused values identified
- status ownership declared

## 6. Acceptance Checklist

- canonical enum order fixed
- downstream-before-upstream violation prohibited
- duplicate audit preparation fixed
