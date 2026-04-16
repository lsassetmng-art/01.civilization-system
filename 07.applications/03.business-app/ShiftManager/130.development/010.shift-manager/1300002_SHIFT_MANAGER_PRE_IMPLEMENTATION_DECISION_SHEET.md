# ============================================================
# SHIFT MANAGER PRE-IMPLEMENTATION DECISION SHEET
# ============================================================

status: draft-fixed-candidate
type: pre-implementation-decision-sheet
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION DEFINITION
# ============================================================

fixed_items:
- ShiftManager centers on shift creation and shift sharing
- distributed and used through BusinessOS
- realtime smartphone viewing supported
- only shared / allowed people may view
- ERP integration supported
- installation / sharing boundary follows NameCardManager style

not_fixed_yet:
- final Japanese app name
- English naming variance confirmation
- package name
- module split policy
- standalone app or BusinessOS sub-app implementation shape

# ============================================================
# 2. USER GROUPS
# ============================================================

provisional_users:
- shift administrator
- store / department manager
- team leader
- general staff
- enterprise administrator
- ERP integration operator

not_fixed_yet:
- whether team leader has creation authority
- self-service range for general staff
- upper viewing bound for enterprise admin
- proxy creator support

# ============================================================
# 3. SHIFT CREATION SCOPE
# ============================================================

provisional_fixed:
- daily creation
- weekly creation
- monthly creation
- draft save
- publish
- republish
- person-based assignment
- time slot based assignment
- department / office / scope based creation

not_fixed_yet:
- template copy
- previous week / month copy
- auto creation assist
- required headcount warning
- skill-based warning
- same-person duplicate warning

# ============================================================
# 4. SHARE RANGE
# ============================================================

provisional_fixed:
- person share
- team share
- department share
- management scope share
- role-based control
- realtime reflection after publication

not_fixed_yet:
- how far others' shifts can be shown
- coworker list visibility
- whole shift table visibility
- cross-team exception rules
- temporary share link necessity
- cache behavior after share stop

# ============================================================
# 5. VIEWING
# ============================================================

provisional_fixed:
- today's shift
- week view
- month view
- my shifts
- allowed shared shifts
- immediate reflection of changes

not_fixed_yet:
- calendar granularity
- timeline view support
- color coding rules
- read-state management
- offline viewing

# ============================================================
# 6. NOTIFICATION
# ============================================================

provisional_fixed:
- publication notification
- change notification
- same-day notification

not_fixed_yet:
- push notification method
- notification timing
- urgent change handling
- retry
- unread management
- common component usage range

# ============================================================
# 7. ERP INTEGRATION
# ============================================================

provisional_fixed:
- employee reference
- organization reference
- office reference
- published shift linkage
- ERP is the company-wide formal integration target

not_fixed_yet:
- one-way or two-way linkage
- linkage timing
- manual or automatic send
- retry method
- ERP acceptance unit
- planned-only or actuals also

# ============================================================
# 8. DATA AUTHORITY BOUNDARY
# ============================================================

app_authority:
- shift drafts
- published shifts
- share settings
- view permission state
- notification state
- publication histories

erp_authority:
- employee formal data
- organization formal data
- office formal data
- enterprise core processing
- payroll / accounting / HR formal processing

not_fixed_yet:
- display name authority inside app
- retired member history retention policy
- ERP master change reflection rules

# ============================================================
# 9. ROLES
# ============================================================

provisional_roles:
- enterprise_admin
- shift_admin
- department_manager
- team_leader
- staff
- integration_operator

not_fixed_yet:
- role combination policy
- cross-office authority
- publish and share separation
- view-only administrator
- proxy approval

# ============================================================
# 10. SCREENS
# ============================================================

provisional_candidates:
- dashboard
- day view
- week view
- month view
- shift editor
- publish screen
- share setting screen
- received shift view
- notification center
- ERP linkage status
- settings

not_fixed_yet:
- first screen
- tab composition
- separation strength between admin and staff UIs
- editing UI style
- list-first or calendar-first design

# ============================================================
# 11. DB
# ============================================================

provisional_targets:
- shift_schedule
- shift_assignment
- shift_publication
- shift_share_rule
- shift_view_scope
- shift_notification
- erp_linkage_state

not_fixed_yet:
- physical schema name
- audit table commonization range
- logical delete policy
- versioning method
- index policy
- precomputed or dynamic share evaluation

# ============================================================
# 12. API
# ============================================================

required_api_candidates:
- shift list
- shift detail
- draft create
- edit
- publish
- republish
- share update
- notification list
- ERP send
- linkage status

not_fixed_yet:
- REST final fixation
- auth method
- publish / republish split
- batch update style
- mobile optimized response shape

# ============================================================
# 13. OPERATIONS
# ============================================================

provisional_fixed:
- preserve publication history
- preserve share history
- monitor ERP send state
- verify notification state

not_fixed_yet:
- incident runbook
- emergency replace operation
- audit viewers
- support role
- log granularity

# ============================================================
# 14. HIGHEST PRIORITY BEFORE IMPLEMENTATION
# ============================================================

highest_priority:
- final application definition
- screen inventory
- role matrix
- share rules
- DB physical schema
- API exact contract
- ERP linkage timing

next_priority:
- notification spec
- color / UI expression rules
- operation audit rules
- error presentation rules
- cache / offline policy

# ============================================================
# 15. CURRENT CONCLUSION
# ============================================================

ShiftManager direction is sufficiently shaped.
To reach implementation-ready level,
the following are mandatory:
- screen inventory
- role / share rules
- DB physical schema
- API exact contract

