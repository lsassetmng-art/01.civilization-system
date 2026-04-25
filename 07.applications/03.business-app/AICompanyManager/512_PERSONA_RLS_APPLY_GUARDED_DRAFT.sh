#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

# ============================================================
# AICompanyManager Persona RLS Apply Guarded Draft
# ============================================================
# IMPORTANT:
# This is a draft. Do not execute unless Boss explicitly says RLS OK / GO.
# ============================================================

: "${PERSONA_DATABASE_URL:?ERROR: PERSONA_DATABASE_URL is not set}"
: "${AICM_RLS_APPLY_GO:?ERROR: set AICM_RLS_APPLY_GO=YES only after Boss RLS OK}"
: "${AICM_SATO_RLS_REVIEW_OK:?ERROR: set AICM_SATO_RLS_REVIEW_OK=YES only after Sato RLS review OK}"

if [ "$AICM_RLS_APPLY_GO" != "YES" ]; then
  printf '%s\n' 'ERROR: AICM_RLS_APPLY_GO is not YES'
  exit 1
fi

if [ "$AICM_SATO_RLS_REVIEW_OK" != "YES" ]; then
  printf '%s\n' 'ERROR: AICM_SATO_RLS_REVIEW_OK is not YES'
  exit 1
fi

psql "$PERSONA_DATABASE_URL" -v ON_ERROR_STOP=1 <<'SQL'
\echo 'AICompanyManager Persona RLS apply start'

alter table business.ai_company_manager_company enable row level security;
alter table business.ai_company_manager_project enable row level security;
alter table business.ai_company_manager_policy enable row level security;
alter table business.ai_company_manager_pipeline_run enable row level security;
alter table business.ai_company_manager_role_assignment enable row level security;
alter table business.ai_company_manager_stage enable row level security;
alter table business.ai_company_manager_deliverable enable row level security;
alter table business.ai_company_manager_review enable row level security;
alter table business.ai_company_manager_return_request enable row level security;
alter table business.ai_company_manager_approval enable row level security;
alter table business.ai_company_manager_delivery enable row level security;
alter table business.ai_company_manager_queue_item enable row level security;
alter table business.ai_company_manager_audit_log enable row level security;

-- Policy creation is intentionally left to Phase G finalized SQL.
-- Phase F creates this guarded draft only.

\echo 'AICompanyManager Persona RLS apply done'
SQL
