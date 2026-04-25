# ============================================================
# AICompanyManager API Payload Adapter Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase L
status: api-payload-adapter-designed

## 1. Purpose

This document defines app-side payload adapter behavior.

The adapter converts UI state into server-route-safe payloads.

## 2. Adapter Responsibilities

- build project create payload
- build policy submit payload
- build pipeline start payload
- build pipeline snapshot request
- build return request payload
- build human approval payload
- build human revision request payload
- build delivery acceptance payload

## 3. Non-Responsibilities

The adapter must not:

- include secrets
- include service role
- include database URL
- include AIWorkerOS internal prompt
- include AIWorkerOS reasoning
- bypass server route

## 4. Payload Direction

UI state
→ payloadAdapter
→ serverRouteClient
→ trusted server route
→ AIWorkerOS bridge or Persona-side DB operation

## 5. Canonical Field

Use current_role_code, not current_role.

Reason:
- current_role caused PostgreSQL syntax issue.
- current_role_code is the fixed canonical app-side field.
