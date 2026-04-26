# AICompanyManager localStorage Mock to DB Mapping

phase: Phase BF
status: localstorage-to-db-mapping
api_implementation: false

## 1. localStorage key

Current mock key candidates:
- AICM_PHASE_AO_ADD_ONLY_SPLIT_STATE
- AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
- AICM_PHASE_AM_DASHBOARD_DETAIL_STATE

Future:
- localStorage should become cache only
- DB becomes source of truth

## 2. companies mapping

mock:
- data.companies[]

DB:
- business.ai_company_manager_company

fields:
- id -> company_id
- name -> company_name
- business_domain -> business_domain
- company_common_rules[] -> business.ai_company_manager_company_rule_file
- departments[] -> business.ai_company_manager_department

## 3. department mapping

mock:
- company.departments[]

DB:
- business.ai_company_manager_department

fields:
- id -> department_id
- name -> department_name
- purpose -> purpose
- organizations[] -> business.ai_company_manager_organization
- task_ledger[] -> business.ai_company_manager_department_task_ledger
- review_items[] -> business.ai_company_manager_review_item

## 4. organization mapping

mock:
- department.organizations[]

DB:
- business.ai_company_manager_organization
- business.ai_company_manager_organization_robot_assignment

fields:
- id -> organization_id
- name -> organization_name
- parent_id -> parent_organization_id
- purpose -> purpose
- robot_ids[] -> organization_robot_assignment rows

## 5. aiworkers mapping

mock:
- data.aiworkers[]

DB:
- AIWorkerOS canon reference

AICompanyManager DB stores only:
- aiworker_robot_id
- display_name
- role_name
- assignment_status

## 6. task ledger mapping

mock:
- department.task_ledger[]

DB:
- business.ai_company_manager_department_task_ledger
- business.ai_company_manager_task_file_metadata

fields:
- id -> ledger_row_id
- deliverable_name -> deliverable_name
- task_name -> task_name
- work_type -> work_type
- status -> task_status
- priority -> priority
- due_date -> due_date
- reference_files -> task_file_metadata where file_role = reference_file
- supplemental_materials -> task_file_metadata where file_role = supplemental_material
- note -> note

## 7. review mapping

mock:
- department.review_items[]

DB:
- business.ai_company_manager_review_item
- business.ai_company_manager_review_action
- business.ai_company_manager_delivery_candidate

fields:
- id -> review_item_id
- title -> review_title
- status -> review_status
- target -> target_name
- note -> note

## 8. migration direction

Current:
- browser localStorage is source

Future:
- DB is source
- localStorage is cache
- save endpoint writes DB
- load endpoint hydrates UI state
