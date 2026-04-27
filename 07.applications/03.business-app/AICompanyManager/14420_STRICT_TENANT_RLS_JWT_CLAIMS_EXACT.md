# AICompanyManager strict tenant RLS JWT claims exact design

## Required JWT claim set

### app_user_id
- Type: uuid text
- Purpose: identifies the authenticated app user.
- Example: app_user_id = 00000000-0000-4000-8000-user00000001

### company_id
- Type: uuid text
- Purpose: primary tenant boundary.
- Required for all AICompanyManager authenticated access.

### department_ids
- Type: json array of uuid text
- Purpose: list of departments the user may access.
- Used for department, ledger, review, and workflow filtering.

### organization_ids
- Type: json array of uuid text
- Purpose: list of organizations the user may access.
- Used when table has organization_id or organization-derived scope.

### aicm_roles
- Type: json array of text
- Allowed values:
  - Manager
  - Leader
  - Worker
  - Reviewer
  - Admin
- Purpose: role-based read/write/action boundaries.

### is_company_admin
- Type: boolean
- Purpose: allows company-wide AICompanyManager administration for the current company only.
- Does not allow cross-company access.

## Canonical helper expressions

### company claim
auth.jwt() ->> 'company_id'

### department claim array
auth.jwt() -> 'department_ids'

### organization claim array
auth.jwt() -> 'organization_ids'

### role claim array
auth.jwt() -> 'aicm_roles'

## Required helper functions, future optional
For readability and safe reuse, later DB phase may add stable helper functions.

Suggested names:
- business.aicm_jwt_company_id()
- business.aicm_jwt_department_ids()
- business.aicm_jwt_organization_ids()
- business.aicm_jwt_roles()
- business.aicm_has_role(role_name text)
- business.aicm_has_department(department_id uuid)
- business.aicm_has_organization(organization_id uuid)

## Boundary
This exact design does not create functions yet.
Function creation requires separate DB approval.
