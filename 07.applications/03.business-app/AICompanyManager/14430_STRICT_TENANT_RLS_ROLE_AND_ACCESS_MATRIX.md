# AICompanyManager strict tenant RLS role and access matrix

## Role definitions

### Admin
- Company-scoped administrator.
- Can manage company-level AICompanyManager settings within current company.
- Cannot access other companies.

### Manager
- Can create and edit department task ledger rows within assigned company and departments.
- Can distribute work to Leaders.
- Can view workflow status for assigned company and departments.
- Can review/approve Manager-level review items.

### Leader
- Can view assigned department task ledger rows.
- Can create task breakdown rows when assigned.
- Can distribute work to Workers.
- Can update workflow progress for assigned department/organization scope.

### Worker
- Can view assigned tasks.
- Can submit execution outputs.
- Cannot approve final review actions unless also Reviewer or Manager.
- Cannot change company/department master rows.

### Reviewer
- Can view review items assigned to allowed company/departments.
- Can create review_action rows for allowed review items.
- Can approve/reject/request_revision/comment according to review assignment.

## Table access matrix

### business.aicm_company
Read:
- Admin, Manager, Leader, Worker, Reviewer may read current company row only.
Insert:
- Admin only, normally server-side.
Update:
- Admin only.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_department
Read:
- company_id must match JWT company_id.
- department_id must be included in department_ids, unless Admin.
Insert:
- Admin or Manager within current company.
Update:
- Admin or Manager within current company.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_organization
Read:
- company_id must match.
- department_id must be allowed.
- organization_id must be allowed when organization scope exists, unless Admin.
Insert:
- Admin or Manager.
Update:
- Admin or Manager.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_department_task_ledger
Read:
- company_id match.
- department_id allowed.
- Manager/Leader/Worker/Reviewer/Admin can read rows in allowed scope.
Insert:
- Manager or Leader.
Update:
- Manager or Leader.
- Worker may update only worker-owned execution fields in a later column-level design.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_review_item
Read:
- company_id match.
- linked ledger department scope allowed.
- Reviewer/Manager/Admin can read.
Insert:
- Manager, Leader, or system endpoint.
Update:
- Reviewer/Manager/Admin, subject to status transition rules.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_review_action
Read:
- company_id match.
- linked review_item allowed.
Insert:
- Reviewer/Manager/Admin.
- action_type must be one of allowed review action types.
Update:
- not allowed by authenticated strict RLS after insert.
Delete:
- not allowed by authenticated strict RLS.

### business.aicm_workflow_run
Read:
- company_id match.
- department/ledger scope allowed.
Insert:
- Manager, Leader, or system endpoint.
Update:
- Manager/Leader/system endpoint for status transitions.
Delete:
- not allowed by authenticated strict RLS.
