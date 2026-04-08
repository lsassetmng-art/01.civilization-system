# ============================================================
# SHIFT MANAGER OVERVIEW
# ============================================================

status: canonical
layer: application-root
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
ShiftManager is a BusinessOS-distributed application
for creating, updating, and sharing shift schedules
to authorized users in realtime on smartphones.

summary:
The application is centered on two business goals:
1. shift creation
2. shift sharing

positioning:
- not an ERP replacement
- not a payroll engine
- not a pure viewer-only app
- a practical mobile-first shift operation application

distribution_model:
- distributed through BusinessOS
- installable to target users
- shareable only to authorized people
- company-wide ERP linkage allowed

same-family-reference:
ShiftManager follows the same distribution and sharing boundary style
as NameCardManager, while the main managed object is shift data.

main_capabilities:
- create shifts
- edit shifts
- publish shifts
- share shifts with authorized people
- realtime reflect updates on mobile
- connect to ERP for company-wide formal linkage

authoritative_boundary:
ShiftManager is authoritative for shift creation, shift publication,
and application-level sharing state.
ERP is authoritative for enterprise master data and company-wide formal integration.

