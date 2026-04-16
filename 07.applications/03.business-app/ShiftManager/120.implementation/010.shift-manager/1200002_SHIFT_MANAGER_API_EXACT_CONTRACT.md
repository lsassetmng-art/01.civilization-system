# ============================================================
# SHIFT MANAGER API EXACT CONTRACT
# ============================================================

status: draft-fixed-candidate
type: api-exact-contract
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

API groups:
- authentication / bootstrap
- shift create / edit
- publish / republish
- share settings
- viewing
- notifications
- ERP linkage
- history / audit

design_principles:
- separate draft APIs and publication APIs
- viewing APIs return only already-allowed results
- ERP export targets publication only
- mobile viewing APIs should stay lightweight
- confirm-before-publish and share-preview endpoints are mandatory-grade

# ============================================================
# 2. COMMON RULES
# ============================================================

auth_premise:
- authenticated through BusinessOS
- person_id / company_id / role set resolved before use

common_headers:
- authorization
- x-company-id
- x-person-id
- x-client-type
- x-request-id

common_response_shape:
- ok
- data
- error
- meta.request_id

common_error_shape:
- error.code
- error.message
- error.details

# ============================================================
# 3. BOOTSTRAP
# ============================================================

GET /api/shift-manager/v1/bootstrap
purpose:
- determine app access
- return initial role / affiliation / capability set
- decide initial home

# ============================================================
# 4. SCHEDULE APIs
# ============================================================

GET /api/shift-manager/v1/schedules
purpose:
- admin schedule list
- filter by state / scope / period

GET /api/shift-manager/v1/schedules/{schedule_id}
purpose:
- draft header and summary for editing

POST /api/shift-manager/v1/schedules
purpose:
- create new draft schedule

PATCH /api/shift-manager/v1/schedules/{schedule_id}
purpose:
- update schedule header

GET /api/shift-manager/v1/schedules/{schedule_id}/assignments
purpose:
- list draft assignments

POST /api/shift-manager/v1/schedules/{schedule_id}/assignments
purpose:
- add draft assignment

PATCH /api/shift-manager/v1/assignments/{assignment_id}
purpose:
- update one draft assignment

DELETE /api/shift-manager/v1/assignments/{assignment_id}
purpose:
- logical delete recommended

POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication
purpose:
- validate before publish
- detect assignment gap / duplicate / share target / ERP readiness

# ============================================================
# 5. PUBLICATION APIs
# ============================================================

POST /api/shift-manager/v1/schedules/{schedule_id}/publish
purpose:
- create publication from current draft

POST /api/shift-manager/v1/schedules/{schedule_id}/republish
purpose:
- create next publication and supersede old one

GET /api/shift-manager/v1/schedules/{schedule_id}/publications
purpose:
- list publication versions

GET /api/shift-manager/v1/schedules/{schedule_id}/publish-history
purpose:
- publication audit history

# ============================================================
# 6. SHARE APIs
# ============================================================

GET /api/shift-manager/v1/share-rules
purpose:
- list share rules

POST /api/shift-manager/v1/share-rules
purpose:
- create share rule

PATCH /api/shift-manager/v1/share-rules/{share_rule_id}
purpose:
- update share rule

POST /api/shift-manager/v1/share-rules/{share_rule_id}/disable
purpose:
- disable share rule

GET /api/shift-manager/v1/publications/{publication_id}/share-preview
purpose:
- show who will be able to view
- prevent share accident

POST /api/shift-manager/v1/publications/{publication_id}/rebuild-view-scope
purpose:
- rebuild precomputed view scope after share changes

GET /api/shift-manager/v1/share-rules/{share_rule_id}/history
purpose:
- inspect share-rule history

# ============================================================
# 7. VIEWING APIs
# ============================================================

GET /api/shift-manager/v1/me/shifts/today
purpose:
- lightweight current-day view for mobile

GET /api/shift-manager/v1/me/shifts/week
purpose:
- weekly personal shift view

GET /api/shift-manager/v1/me/shifts/month
purpose:
- monthly personal shift view

GET /api/shift-manager/v1/me/visible-shifts
purpose:
- list visible shifts inside allowed range

GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}
purpose:
- open one visible published shift detail

# ============================================================
# 8. NOTIFICATION APIs
# ============================================================

GET /api/shift-manager/v1/me/notifications
purpose:
- list user notifications

POST /api/shift-manager/v1/me/notifications/{notification_id}/read
purpose:
- mark as read

POST /api/shift-manager/v1/notifications/{notification_id}/retry
purpose:
- resend failed notification
permission:
- shift_admin or integration_operator equivalent

# ============================================================
# 9. ERP APIs
# ============================================================

GET /api/shift-manager/v1/erp-linkages
purpose:
- list ERP export states

POST /api/shift-manager/v1/publications/{publication_id}/export-erp
purpose:
- request ERP export for publication

POST /api/shift-manager/v1/publications/{publication_id}/retry-export-erp
purpose:
- retry failed ERP export

GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage
purpose:
- inspect one publication linkage result

# ============================================================
# 10. ACCESS AUDIT API
# ============================================================

GET /api/shift-manager/v1/publications/{publication_id}/access-audit
purpose:
- inspect access audit
permission:
- enterprise_admin or upper shift_admin scope

# ============================================================
# 11. KEY ERROR CODES
# ============================================================

auth_and_permission:
- SHIFT_AUTH_REQUIRED
- SHIFT_ACCESS_DENIED
- SHIFT_PERMISSION_DENIED
- SHIFT_ROLE_NOT_ALLOWED

business_state:
- SHIFT_SCHEDULE_NOT_FOUND
- SHIFT_ASSIGNMENT_NOT_FOUND
- SHIFT_PUBLICATION_NOT_FOUND
- SHIFT_ALREADY_PUBLISHED
- SHIFT_DRAFT_REQUIRED
- SHIFT_PUBLICATION_REQUIRED

share:
- SHIFT_SHARE_RULE_NOT_FOUND
- SHIFT_VIEW_SCOPE_REBUILD_FAILED
- SHIFT_SHARE_PREVIEW_FAILED
- SHIFT_VISIBLE_RANGE_DENIED

erp:
- SHIFT_ERP_EXPORT_NOT_ALLOWED
- SHIFT_ERP_EXPORT_FAILED
- SHIFT_ERP_RETRY_NOT_ALLOWED
- SHIFT_ERP_MASTER_MISMATCH

validation:
- SHIFT_VALIDATION_ERROR
- SHIFT_DATE_RANGE_INVALID
- SHIFT_TIME_RANGE_INVALID
- SHIFT_DUPLICATE_ASSIGNMENT
- SHIFT_TARGET_SCOPE_INVALID

# ============================================================
# 12. MVP MINIMUM API SET
# ============================================================

mvp_minimum:
- GET /bootstrap
- GET /schedules
- POST /schedules
- GET /schedules/{schedule_id}
- POST /schedules/{schedule_id}/assignments
- POST /schedules/{schedule_id}/validate-for-publication
- POST /schedules/{schedule_id}/publish
- GET /share-rules
- POST /share-rules
- GET /publications/{publication_id}/share-preview
- GET /me/shifts/today
- GET /me/shifts/week
- GET /me/notifications
- GET /erp-linkages

# ============================================================
# 13. IMPORTANT API DECISIONS
# ============================================================

important_points:
- independent validate-for-publication API
- independent share-preview API
- view APIs return only allowed results
- ERP export is publication_id based

