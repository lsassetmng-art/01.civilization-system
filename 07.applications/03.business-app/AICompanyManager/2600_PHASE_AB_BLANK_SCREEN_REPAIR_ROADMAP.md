# ============================================================
# AICompanyManager Phase AB Blank Screen Repair Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase AB
status: blank-screen-repair-started

## 1. Problem

The browser showed a blank screen at local test URL.

Likely cause:
- multiple accumulated extension scripts
- stale localStorage state
- runtime error before render
- dashboard extension collision

## 2. Repair Policy

Replace the entry point with a clean single-screen SPA:

- index.html loads only:
  - phase-ab-ui.css
  - phase-ab-stable-ui.js

No old phase extension scripts are loaded from index.html.

## 3. Required Features Kept

- company dashboard
- route from dashboard to company operation
- route from dashboard to organization operation
- company add/edit/delete
- organization tree add/edit/delete
- organization unit add/edit/delete
- company rule file metadata attachment
- organization rule file metadata attachment
- handoff additional file metadata
- robot display: robot_name@role
- no billing
- no DB/RLS/live call

## 4. Safety

DB WRITE:
- NOT EXECUTED

RLS APPLY:
- NOT EXECUTED

LIVE AIWORKEROS CALL:
- NOT EXECUTED

GIT PUSH:
- NOT EXECUTED
