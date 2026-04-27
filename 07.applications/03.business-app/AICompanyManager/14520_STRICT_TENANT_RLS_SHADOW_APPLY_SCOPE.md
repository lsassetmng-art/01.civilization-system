# AICompanyManager strict tenant RLS shadow apply scope

## Target tables
- business.aicm_company
- business.aicm_department
- business.aicm_organization
- business.aicm_department_task_ledger
- business.aicm_review_item
- business.aicm_review_action
- business.aicm_workflow_run

## Helper functions
- business.aicm_jwt()
- business.aicm_jwt_company_id()
- business.aicm_jwt_has_role(text)
- business.aicm_jwt_has_any_role(text[])
- business.aicm_jwt_is_company_admin()
- business.aicm_jwt_array_has(text, uuid)
- business.aicm_jwt_has_department(uuid)
- business.aicm_jwt_has_organization(uuid)

## Policy mode
- Additive strict shadow policies.
- Existing smoke-safe policies remain.

## Future cutover
Removing aicm_authenticated_all_smoke_safe requires a separate explicit approval:
strict tenant RLS cutover OK
