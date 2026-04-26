# ============================================================
# AICompanyManager Dashboard Integrated Company Organization Operation Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase Y
status: dashboard-integrated-company-org-operation-canon-created

## 1. Canon

Company and organization operations are included inside the company dashboard.

The company dashboard contains:
- company list
- company overview
- company add panel
- company edit panel
- organization tree list
- organization tree add panel
- organization unit add panel
- organization edit panel
- role progress
- current task
- delivery gate

## 2. Top-Level Navigation

Top-level navigation should not scatter core company operations.

Recommended top-level tabs:
- company dashboard
- handoff

Company add/edit and organization add/edit live inside company dashboard.

## 3. Organization Tree Add

Organization tree creation is a first-class operation.

Each company can add multiple organization trees.

## 4. Organization Unit Add/Edit

Each tree can add and edit units.

Each unit has:
- parent unit
- unit name
- purpose
- AI role
- robot name
- AIWorker source
- deliverable

Robot display remains:
- robot_name@ai_role
