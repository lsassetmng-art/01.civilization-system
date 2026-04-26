# ============================================================
# AICompanyManager Clean Single Screen UI Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase V
status: clean-single-screen-ui-canon-created

## 1. Problem

Old screen remained above the new screen.

## 2. Canon

The app should render one clean root.

Current mock implementation replaces index.html and loads only Phase V UI files.

## 3. Required Surfaces

- company dashboard
- settings
- organization selection from AIWorker
- multiple handoff packages
- delivery-only human gate

## 4. Excluded Surfaces

- old dashboard
- manual internal review controls
- pricing
- local queue raw payload display
