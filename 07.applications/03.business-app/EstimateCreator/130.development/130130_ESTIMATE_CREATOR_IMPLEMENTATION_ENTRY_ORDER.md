# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION ENTRY ORDER
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Recommended implementation entry order:

1. local app shell and entry routing
2. standalone login entry
3. deeplink route parsing
4. shared session validation
5. estimate core screens
6. estimate local model persistence
7. offline queue
8. sync state and replay
9. share integration
10. ERP publication request integration
11. inventory reference integration
12. premium entitlement model/runtime
13. structured meeting memo
14. QA management
15. estimate templates
16. release hardening

Reason:
This order minimizes breakage from dependent capability being built
before foundational state handling is stable.

