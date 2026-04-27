# AICompanyManager Write API Payload Contract Canon

phase: Phase HN
status: write-api-payload-contract-canon
write_api_connect: false

## 1. Company save

endpoint:
- POST /api/aicm/v1/companies/save

payload:
- company_id
- company_name
- business_domain
- company_status
- company_common_rules_text
- idempotency_key

## 2. Company rules save

endpoint:
- POST /api/aicm/v1/companies/rules/save

payload:
- company_id
- company_common_rules_text
- idempotency_key

## 3. Department save

endpoint:
- POST /api/aicm/v1/departments/save

payload:
- company_id
- department_id
- department_name
- purpose
- department_status
- display_order
- idempotency_key

## 4. Organization save

endpoint:
- POST /api/aicm/v1/organizations/save

payload:
- company_id
- department_id
- organization_id
- parent_organization_id
- organization_name
- purpose
- organization_status
- display_order
- robot_assignments
- idempotency_key

## 5. Ledger row save

endpoint:
- POST /api/aicm/v1/ledger/save

payload:
- company_id
- department_id
- ledger_row_id
- deliverable_name
- task_name
- work_type
- task_status
- priority
- due_date
- responsible_role
- responsible_robot_id
- reference_files
- supplemental_materials
- applicable_rules
- handoff_link
- note
- idempotency_key

## 6. Delete/archive policy

Hard delete:
- not default

Default:
- archive/status update where possible

Required:
- audit trail
- idempotency_key
- actor/session context

## 7. 現在の判定

payload contract:
- DESIGNED ONLY

write execution:
- NOT EXECUTED
