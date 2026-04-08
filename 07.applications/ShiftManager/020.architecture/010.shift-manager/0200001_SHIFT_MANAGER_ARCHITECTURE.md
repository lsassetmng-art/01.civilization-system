# ============================================================
# SHIFT MANAGER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

purpose:
Defines the main structural architecture of ShiftManager.

components:
1. Shift Draft Manager
- stores editable unpublished schedules
- supports revision before release

2. Shift Publication Manager
- turns drafts into published schedules
- maintains published version identity
- triggers visibility refresh

3. Share Permission Manager
- defines who can see what
- supports individual, team, and department scope
- enforces visibility checks before delivery

4. Mobile View Delivery
- serves current schedules to smartphones
- presents day/week/month views
- refreshes published changes quickly

5. Notification Dispatcher
- sends publication/change notifications
- sends urgent update signals

6. ERP Linkage Connector
- receives master references
- sends formal shift outputs when needed
- exposes linkage status

7. Audit and History Manager
- records publication history
- records share changes
- records critical operation events

architecture_notes:
- creation and sharing are first-class architecture concerns
- ERP is external-authority-connected, not application-internalized
- mobile visibility is part of core architecture, not an optional add-on
