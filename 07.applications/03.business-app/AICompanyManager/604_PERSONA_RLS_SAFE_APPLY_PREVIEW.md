# ============================================================
# AICompanyManager Persona RLS Safe Apply Preview
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase G-Gate
status: persona-rls-safe-apply-preview-created

## 1. Purpose

This document previews what Phase G will do after explicit RLS OK / GO.

## 2. Tables

RLS target tables:

- business.ai_company_manager_company
- business.ai_company_manager_project
- business.ai_company_manager_policy
- business.ai_company_manager_pipeline_run
- business.ai_company_manager_role_assignment
- business.ai_company_manager_stage
- business.ai_company_manager_deliverable
- business.ai_company_manager_review
- business.ai_company_manager_return_request
- business.ai_company_manager_approval
- business.ai_company_manager_delivery
- business.ai_company_manager_queue_item
- business.ai_company_manager_audit_log

## 3. Policy Classes

- direct owner_user_id policies
- project ownership policies
- pipeline ownership policies
- queue owner policies
- audit select / insert only policies

## 4. Audit Log Rule

audit_log remains append-only by default.

Allowed:
- select by owner or project owner
- insert by owner or project owner

Not allowed:
- update
- delete

## 5. Service Route Rule

AIWorkerOS bridge writes should go through trusted server/service route.

Client-side RLS remains owner-based.
