# ============================================================
# COMMON OS IMPLEMENTATION RULES CANONICAL
# ============================================================

status: canonical
system: CommonOS
owner: Boss
prepared_by: Zero

## PURPOSE
This document fixes implementation-facing rules for CommonOS.

## RULES
- implementation artifacts belong under CommonOS implementation structure
- shared runtime direction must remain cross-OS reusable
- app_common-related SQL and implementation drafts belong here or in model-aligned locations as appropriate
- practical files may exist here, but business canon must stay domain-owned
- runtime must follow offline-first plus local queue plus online sync
- client must not embed secrets or business brain logic

## BUILD / RUNTIME DIRECTION
- shared HTML UI base
- shared token-driven component runtime
- shared sync state presentation
- ERP-compatible dense variants allowed as variants
