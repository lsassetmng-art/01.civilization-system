# ============================================================
# SHIFT MANAGER INTEGRATED
# ============================================================

status: canonical
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. APPLICATION DEFINITION
# ============================================================

ShiftManager is a BusinessOS-distributed application
that enables authorized users to create shifts,
publish them, and share them in realtime to permitted people
on smartphones and operation screens.

The center of the application is not payroll or accounting.
The center is:
- shift creation
- shift sharing

ERP linkage is supported for company-wide formal integration,
but ERP is not the primary operation UI for this application.

# ============================================================
# 2. CORE VALUE
# ============================================================

ShiftManager exists so that a company can
create practical work schedules quickly
and share them immediately to the right people.

The main value is:
- managers can build shifts
- staff can see updates immediately
- only permitted people can view shared schedules
- enterprise-wide consistency is maintained through ERP linkage

# ============================================================
# 3. PRIMARY USERS
# ============================================================

primary_users:
- shift administrators
- team leaders
- store managers
- department managers
- staff members who receive shared shift schedules

# ============================================================
# 4. PRIMARY FUNCTIONS
# ============================================================

4.1 Shift Creation
- create daily shifts
- create weekly shifts
- create monthly shifts
- assign people to time slots
- edit existing assignments
- save draft schedules
- publish finalized schedules
- republish corrected schedules

4.2 Shift Sharing
- share to selected users
- share to teams
- share to departments
- limit visibility by permission
- stop sharing
- change sharing scope
- reflect updates in realtime

4.3 Mobile Realtime Access
- smartphone viewing
- current day schedule view
- weekly view
- monthly view
- shift detail view
- immediate refresh after changes

4.4 Notification
- publish notice
- change notice
- urgent correction notice
- same-day schedule reminder

4.5 ERP Linkage
- employee master linkage
- department linkage
- office/store linkage
- formal company-wide shift linkage
- enterprise consistency support

# ============================================================
# 5. NON-GOALS
# ============================================================

ShiftManager does not primarily own:
- payroll calculation
- accounting posting
- cost settlement
- enterprise HR authority
- ERP-wide approval engine

# ============================================================
# 6. AUTHORITY BOUNDARY
# ============================================================

ShiftManager authoritative scope:
- shift draft
- shift edit
- shift publication
- shift sharing state
- application-level visibility control
- mobile delivery state

ERP authoritative scope:
- enterprise employee master
- company organization master
- official enterprise integration target
- downstream payroll/accounting/human-resources operations

# ============================================================
# 7. SHARE MODEL
# ============================================================

Share is controlled through BusinessOS distribution and permission settings.

Only explicitly authorized people may view shared shifts.

Sharing can be controlled by:
- individual
- team
- department
- manager scope
- enterprise-admin scope

# ============================================================
# 8. NAMING AND POSITIONING
# ============================================================

application_name:
ShiftManager

business_meaning:
A mobile-first shift creation and sharing application
distributed through BusinessOS and linked to ERP.

# ============================================================
# 9. DESIGN PRINCIPLES
# ============================================================

- mobile-first usability
- realtime reflection
- permission-first visibility
- additive ERP linkage
- clear boundary with enterprise masters
- low-friction publishing and sharing
- practical operation over excessive complexity

# ============================================================
# 10. MINIMUM SCREEN SET
# ============================================================

- shift dashboard
- day/week/month calendar view
- shift editor
- publication screen
- share setting screen
- received-shift view
- notification center
- ERP linkage status screen
- application setting screen

