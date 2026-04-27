# AICompanyManager Web Complete With Backend API Canon

phase: Phase FY
status: web-complete-with-backend-api-canon

## 1. 結論

AICompanyManager は Web完結で進める。

ただし、Web完結の意味は「ブラウザ単体完結」ではない。

Correct:
- Browser HTML/CSS/JS
- Backend API
- Supabase Persona側DB
- RLS/RPC
- AIWorkerOS call through backend only

Incorrect:
- browser-only service role
- browser direct privileged DB operation
- browser direct live AIWorkerOS call

## 2. 正本構成

Browser:
- index.html
- CSS
- JavaScript
- LocalRepository
- ApiRepository
- offline queue / localStorage fallback

Backend API:
- /api/aicm/v1/bootstrap
- /api/aicm/v1/companies/*
- /api/aicm/v1/departments/*
- /api/aicm/v1/organizations/*
- /api/aicm/v1/ledger/*
- /api/aicm/v1/reviews/action
- /api/aicm/v1/workflows/*

Database:
- Persona側DB
- business.aicm_*
- RLS
- RPC

AIWorkerOS:
- backend API経由のみ
- live call は別工程

## Explicit Recommended Architecture Marker

Recommended architecture:
- HTML UI + backend API

This is the canonical implementation direction for AICompanyManager.
