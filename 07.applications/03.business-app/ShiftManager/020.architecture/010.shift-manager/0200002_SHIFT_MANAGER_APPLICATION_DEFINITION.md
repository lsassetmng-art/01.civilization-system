# ============================================================
# SHIFT MANAGER APPLICATION DEFINITION
# ============================================================

status: canonical
type: application-definition
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FINAL DEFINITION
# ============================================================

ShiftManager is a BusinessOS-distributed, mobile-first business application
whose central functions are shift creation and shift sharing.

The application enables administrators or authorized operators
to create, edit, publish, republish, and share shifts in realtime
to permitted people on smartphones and operation screens.

Visibility is controlled by explicit sharing settings.
Only permitted users may view their own shifts
or other shifts within their allowed share scope.

ShiftManager owns:
- shift creation
- shift editing
- draft management
- publication / republication
- sharing settings
- visibility control
- mobile viewing
- notifications
- publication history
- share history

ShiftManager does not primarily own:
- payroll calculation
- accounting posting
- enterprise HR formal authority
- company-wide core approvals
- ERP replacement responsibility

ERP linkage is supported.
ERP remains the formal authority for company-wide master data
such as employee, organization, office, and enterprise integration processing.

The application distribution model and sharing boundary
follow the same style as NameCardManager:
- distributed through BusinessOS
- installable by allowed targets
- visible only to explicitly allowed people
- enterprise integration possible through ERP

The essential operating flow is:
create shift
-> publish shift
-> share to permitted people
-> reflect updates in realtime.

# ============================================================
# 2. ONE-LINE DEFINITION
# ============================================================

ShiftManager is a mobile-first business application
for shift creation and controlled realtime sharing,
with BusinessOS distribution and ERP integration support.

# ============================================================
# 3. SHORT DEFINITION
# ============================================================

A BusinessOS-distributed application
for creating shifts and sharing them in realtime
to permitted people.

# ============================================================
# 4. RESPONSIBILITY BOUNDARY
# ============================================================

ShiftManager responsibilities:
- shift creation
- shift editing
- draft holding
- publish / republish
- sharing settings
- visibility scope control
- mobile viewing
- change notification
- publication / share histories

ERP responsibilities:
- employee formal master
- organization formal master
- office formal master
- enterprise-wide formal integration
- payroll / accounting / HR formal processing

# ============================================================
# 5. NON-GOALS
# ============================================================

ShiftManager is not intended to become:
- a payroll application
- a core attendance engine
- an accounting application
- an ERP replacement
- a giant all-in-one business suite

