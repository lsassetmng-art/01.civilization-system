# ============================================================
# BUSINESS OS ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

reading order:
1. 020_BUSINESS-OS_ARCHITECTURE_OVERVIEW.md
2. 0200003_BUSINESS_OS_ARCHITECTURE.md
3. 020_BUSINESS_TO_PERSONA_CONNECTION_ARCHITECTURE.md
4. 021_BUSINESS_EVENT_OUTBOX_ARCHITECTURE.md
5. 022_BUSINESS_PERSONA_RESULT_REFLECTION_ARCHITECTURE.md
6. 023_BUSINESS_PERSONA_FAILURE_HANDLING_ARCHITECTURE.md
7. 140.business-ai-worker
8. 150.submission-common
9. 220.app-access-control

domain guide:
- 140.business-ai-worker
  Company-scoped work-use AI operation layer including
  company secretary, business consultant, and ai employee.

- 150.submission-common
  Shared business submission boundary and submission rules.

- 220.app-access-control
  Application access control and app-level availability boundary.
