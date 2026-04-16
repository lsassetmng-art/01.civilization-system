# ============================================================
# SHIFT MANAGER SCREEN INVENTORY
# ============================================================

status: draft-fixed-candidate
type: screen-inventory
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. SCREEN DESIGN PREMISE
# ============================================================

ShiftManager centers on:
- create
- publish
- share
- view
- notify changes

The UI naturally separates into:
- management screens
- receive / viewing screens

# ============================================================
# 2. SCREEN GROUPS
# ============================================================

common:
- A01 startup / initial judge
- A02 login / access confirmation
- A03 home / dashboard
- A04 notification center
- A05 settings
- A06 account / affiliation info

creation:
- B01 shift list
- B02 shift create
- B03 shift edit
- B04 day edit
- B05 week edit
- B06 month edit
- B07 person-based assignment edit
- B08 draft confirmation
- B09 publish confirmation
- B10 republish confirmation

sharing:
- C01 share-rule list
- C02 share-scope setting
- C03 person share setting
- C04 team share setting
- C05 department share setting
- C06 management scope setting
- C07 stop share confirmation
- C08 publish target confirmation

viewing:
- D01 my shift
- D02 today's shift
- D03 week view
- D04 month view
- D05 shift detail
- D06 visible shift list
- D07 other person's shift view

erp_and_admin:
- E01 ERP linkage status list
- E02 ERP export confirmation
- E03 ERP export history
- E04 error detail
- E05 publication history
- E06 share history

# ============================================================
# 3. CORE SCREEN DETAILS
# ============================================================

A03_home_dashboard:
purpose:
- show today's state
- lead to draft / published / notification / share state

main_display:
- today's own shift
- latest managed shift
- draft count
- published count
- unread notifications
- ERP error flag

main_actions:
- create new
- open list
- open notifications
- open share settings
- open linkage status

B03_shift_edit:
purpose:
- central draft editing screen

main_elements:
- target period header
- assignment list
- unassigned check
- save
- pre-publish confirmation link

B08_draft_confirmation:
purpose:
- final check before publication

check_items:
- unassigned
- duplicate
- target members
- target period
- planned share targets
- ERP export availability

B09_publish_confirmation:
purpose:
- switch draft to publication

main_checks:
- publish targets
- share scope
- notification on/off
- immediate reflect confirmation

C02_share_scope_setting:
purpose:
- define who may see the shift

scope_candidates:
- person
- team
- department
- management_scope

C08_publish_target_confirmation:
purpose:
- prevent visibility accident by confirming who can see

D01_my_shift:
purpose:
- confirm own working schedule

main_display:
- date
- time
- office
- role
- note

D03_week_view:
purpose:
- understand weekly schedule quickly

D05_shift_detail:
purpose:
- confirm details of one shift item

main_display:
- date
- start / end
- affiliation
- place
- role
- memo
- change summary

E01_erp_linkage_status:
purpose:
- show success / failure / not sent state

# ============================================================
# 4. MVP MINIMUM SCREENS
# ============================================================

mvp_required:
- A01 startup / initial judge
- A02 login / access confirmation
- A03 home / dashboard
- B01 shift list
- B03 shift edit
- B08 draft confirmation
- B09 publish confirmation
- C01 share-rule list
- C02 share-scope setting
- D01 my shift
- D03 week view
- D05 shift detail
- A04 notification center
- E01 ERP linkage status

mvp_later:
- B04 day edit
- B06 month edit
- B07 person-based assignment edit
- C03 to C06 specialized share screens
- E03 export history
- E04 error detail
- E06 share history

# ============================================================
# 5. NAVIGATION DIRECTION
# ============================================================

admin_flow:
home
-> shift list
-> shift edit
-> draft confirmation
-> publish confirmation
-> share settings
-> notification / ERP status

staff_flow:
home
-> today's shift
-> week view
-> shift detail
-> notification center

# ============================================================
# 6. CURRENT CONCLUSION
# ============================================================

The screen set is naturally grouped into:
- creation
- sharing
- viewing
- ERP / operation management

The most critical five screens are:
- home / dashboard
- shift edit
- publish confirmation
- share scope setting
- my shift

