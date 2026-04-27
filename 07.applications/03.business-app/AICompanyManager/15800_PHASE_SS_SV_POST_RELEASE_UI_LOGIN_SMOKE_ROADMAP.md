# AICompanyManager Phase SS-SV post-release UI login smoke roadmap

## Phase
- SS-SV

## Current position
Completed:
- production release execution marker
- final production readiness
- real API/JWT backend integration smoke
- role-specific write rollback smoke
- strict tenant RLS final acceptance

## Purpose
Run a post-release UI login smoke with localhost UI and backend read-only strict RLS check.

## This phase
- Create local Node UI smoke server.
- Serve a post-release login smoke UI page.
- Simulate UI login claims for Manager, Worker, Reviewer, cross-company, and missing-claims cases.
- Backend performs Persona DB read-only strict RLS checks.
- Verify UI page loads.
- Verify valid role claims pass.
- Verify cross-company and missing claims deny tenant visibility.

## Not executed
- DB DDL
- DB DATA WRITE
- RLS apply
- policy change
- persistent insert
- live AIWorkerOS re-call
