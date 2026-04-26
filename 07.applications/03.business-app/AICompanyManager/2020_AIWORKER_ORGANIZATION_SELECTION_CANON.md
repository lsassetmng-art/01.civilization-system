# ============================================================
# AICompanyManager AIWorker Organization Selection Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase V
status: aiworker-organization-selection-canon-created

## 1. Canon

Organization members are selected from AIWorker candidates.

The user configures the organization, but assignment choices come from AIWorkerOS worker definitions or a server-mediated catalog.

## 2. v1 Mock Selection

For current mock implementation, use a local AIWorker catalog.

Required selectable role families:
- President
- Manager
- Leader
- Worker

Each organization unit can select:
- unit name
- purpose
- AI role
- selected AIWorker
- deliverable responsibility

## 3. Future Live Source

Future source:
- AIWorkerOS worker catalog
- server-mediated route only
- no direct browser access to AIWorkerOS internal data
- no hidden prompt exposure
