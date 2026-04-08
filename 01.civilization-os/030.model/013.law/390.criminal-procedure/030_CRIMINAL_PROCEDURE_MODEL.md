# ============================================================
# CRIMINAL PROCEDURE
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for criminal procedure.

# 2. CORE ENTITIES

- criminal_case
- criminal_charge
- criminal_procedure_stage
- criminal_judgment

# 3. STATE MODEL

criminal_case:
- criminal_case_id
- case_code
- jurisdiction_scope
- case_status
- opened_at

criminal_charge:
- criminal_charge_id
- criminal_case_id
- charge_code
- charge_scope
- charge_status

criminal_procedure_stage:
- criminal_procedure_stage_id
- criminal_case_id
- stage_code
- stage_status
- changed_at

criminal_judgment:
- criminal_judgment_id
- criminal_case_id
- judgment_code
- judgment_reason
- judgment_status

# 4. INTEGRITY RULES

- charge and procedure stage must belong to one criminal case
- judgment must reference one criminal case
- jurisdiction scope must be explicit
- hidden procedural mutation without stage record is prohibited

