# ============================================================
# SHIFT MANAGER ROLE AND SHARE RULES
# ============================================================

status: draft-fixed-candidate
type: role-and-share-rule-definition
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. BASIC POLICY
# ============================================================

ShiftManager centers on shift creation and shift sharing.
Authority therefore separates into:
- who can create / edit / publish
- who can show
- who can view
- who can export ERP

principles:
- draft and publication are separate permissions
- sharing is explicit grant
- publication does not mean public-to-all
- viewing range is determined by both role and share rules
- ERP linkage is separate authority
- auditable actions require history
- least privilege is default

# ============================================================
# 2. ROLE DEFINITIONS
# ============================================================

enterprise_admin:
meaning:
enterprise-level supervision authority

main_permissions:
- enterprise-wide setting view
- enterprise share rule management
- publication history view
- ERP linkage state view
- enterprise exception handling
- upper-level authority management

shift_admin:
meaning:
main application business operator

main_permissions:
- create shift
- edit shift
- save drafts
- publish
- republish
- manage share rules
- stop sharing
- confirm publish targets
- view publish history
- execute ERP export in managed scope

department_manager:
meaning:
department-level manager

main_permissions:
- create department shift
- edit department shift
- publish department shift
- manage department share settings
- stop department sharing
- view department members
- view department publication history

limits:
- other departments disallowed in principle
- no enterprise-wide share policy edits

team_leader:
meaning:
team-level operation helper

candidate_permissions:
- create team drafts
- adjust team schedule
- pre-publish review
- view team members
- propose share candidates

current_recommendation:
treat as helper authority only.
no publish and no share-setting authority by default.

staff:
meaning:
general viewer / receiver

main_permissions:
- view own shifts
- view explicitly allowed shared shifts
- receive notifications
- open details

default_denied:
- create
- publish
- alter share scope
- ERP export

integration_operator:
meaning:
ERP linkage and linkage monitoring operator

main_permissions:
- check ERP state
- execute export
- retry export
- inspect export errors
- inspect linkage history

principle:
separated from shift content editing responsibility

# ============================================================
# 3. ROLE MATRIX
# ============================================================

legend:
- yes = allowed
- conditional = condition-based
- no = denied

matrix:
- permission: view own shifts
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: yes
  integration_operator: yes

- permission: view allowed shifts
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: yes
  integration_operator: conditional

- permission: create shift
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: edit shift
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: save draft
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: publish
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: republish
  enterprise_admin: conditional
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: manage share rules
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: stop sharing
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: enterprise-wide view
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: no

- permission: department view
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: no

- permission: team view
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: yes
  staff: conditional
  integration_operator: no

- permission: publish history
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: conditional
  staff: no
  integration_operator: conditional

- permission: share history
  enterprise_admin: yes
  shift_admin: yes
  department_manager: yes
  team_leader: no
  staff: no
  integration_operator: no

- permission: ERP state view
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: conditional
  team_leader: no
  staff: no
  integration_operator: yes

- permission: ERP export
  enterprise_admin: yes
  shift_admin: conditional
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: yes

- permission: ERP retry
  enterprise_admin: yes
  shift_admin: no
  department_manager: no
  team_leader: no
  staff: no
  integration_operator: yes

# ============================================================
# 4. SHARE MODEL
# ============================================================

Only published shifts are share targets.
Drafts are visible only to authorized creators / managers.

share_evaluation_steps:
1. role evaluation
2. scope evaluation
3. explicit share evaluation

share_scope_candidates:
- person
- team
- department
- management_scope
- enterprise_admin_scope

# ============================================================
# 5. SHARE UNITS
# ============================================================

person_share:
- for the person themself
- for exceptional specific viewers
- for specific coordinators

team_share:
- for same operational team members
- requires reevaluation on team membership change

department_share:
- for department-wide visibility
- broader range, needs caution

management_scope_share:
- for responsible managers over their area
- requires management scope master

# ============================================================
# 6. VIEW RANGE RULES
# ============================================================

staff:
- can view own shifts
- can view explicitly allowed scope only
- cannot view everyone by default

team_leader:
- can view published shifts in own team
- can view draft only in own handled scope
- cannot view other teams by default

department_manager:
- can view published shifts in own department
- can view draft in own department
- cannot view other departments by default

shift_admin:
- can manage draft and published states in handled scope
- can alter share evaluation settings

enterprise_admin:
- may have broader supervision visibility
- broader edit is not automatic

# ============================================================
# 7. PUBLICATION RULES
# ============================================================

draft:
- only creator-authorized people may view
- not shared
- not ERP export target

published:
- enters sharing evaluation
- may trigger notifications
- may become ERP export candidate

republished:
- old publication becomes superseded or replaced
- recipients receive updated state
- ERP may receive resend

# ============================================================
# 8. ACCIDENT PREVENTION RULES
# ============================================================

- publish target confirmation should be mandatory-grade
- share-scope expansion needs stronger confirmation
- department / management scope share changes require history
- share stop should be reflected immediately
- permission revocation should stop future visibility
- cache visibility must consider expiry

# ============================================================
# 9. AUDIT TARGET ACTIONS
# ============================================================

- shift create
- shift edit
- publish
- republish
- share rule change
- share stop
- visibility expansion
- ERP export
- ERP retry
- authority change

# ============================================================
# 10. CURRENT RECOMMENDED FIXATION
# ============================================================

recommended_defaults:
- team_leader cannot publish
- team_leader cannot manage share rules
- staff can view self + explicit scope only
- department_manager is limited to own department
- shift_admin is main owner of publish / republish / share
- integration_operator is linkage-centered and cannot edit content

