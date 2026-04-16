# PERSONA RUNTIME SESSION DEVELOPMENT GUIDE

status: implementation-ready-followup

session_lifecycle:
- create
- active
- suspended
- resumed
- terminating
- terminated
- expired

required_controls:
- released snapshot or package only
- heartbeat timeout exact handling
- resume token or session restore contract fixed
- termination reason fixed
- session audit event emitted on each terminal path
