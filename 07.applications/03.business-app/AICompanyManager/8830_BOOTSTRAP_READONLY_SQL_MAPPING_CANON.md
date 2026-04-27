# AICompanyManager Bootstrap Readonly SQL Mapping Canon

phase: Phase GQ
status: bootstrap-readonly-sql-mapping-canon
backend_db_connect: false

## 1. Read targets

Readonly bootstrap will map:

- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item

## 2. Response fields

Response:
- companies
- current_company_id
- departments
- organizations
- task_ledger
- review_items
- repository_mode

## 3. Mapping rules

company:
- company_id
- company_name
- business_domain
- company_status
- company_common_rules_text

department:
- department_id
- company_id
- department_name
- purpose
- department_status
- display_order

organization:
- organization_id
- company_id
- department_id
- parent_organization_id
- organization_name
- purpose
- organization_status
- display_order

task_ledger:
- ledger_row_id
- company_id
- department_id
- deliverable_name
- task_name
- work_type
- task_status
- priority
- due_date
- responsible_role
- responsible_robot_id
- handoff_link
- note

review_items:
- review_item_id
- company_id
- department_id
- ledger_row_id
- review_title
- target_name
- review_status
- note

## 4. Forbidden

Readonly SQL mapping must not include:
- insert
- update
- delete
- review action
- workflow start
- live AIWorkerOS call
