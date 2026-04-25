# ============================================================
# AIWORKER TRUTH SPLIT ARCHITECTURE EXACT
# ============================================================

status: exact-design
system: AiworkerOS
layer: 020.architecture
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact truth split among aiworker, business, and cx22073jw.

three_surface_architecture:
1. aiworker
   - canonical worker entity truth
   - mutable worker state
   - worker capability, growth, assignment, repair, rebuild
   - company and user AI tendency truth
   - restriction and privilege truth on worker side

2. business
   - commercial contract
   - pricing, order, subscription, billing
   - approval record on business side
   - dispatch request on business side
   - ERP linkage and business-facing summary

3. cx22073jw
   - AI-worker-only safe read families
   - masked and summarized view surface
   - role-specific, gate-aware read surface
   - not canonical storage
   - not general app read surface

hard_boundary:
- worker entity truth must not be copied back into business as canonical
- AI workers must not read aiworker raw tables
- AI workers must not read business raw tables
- other apps must not use cx22073jw AI-worker-only families
- commercial decisions do not mutate worker truth directly
- worker-side repair and rebuild do not rewrite commercial truth directly

write_path_principle:
- business creates request-side truth
- aiworker decides worker-side entity state
- controlled surfaces perform official write application
- result summary is returned to business as business-facing truth
