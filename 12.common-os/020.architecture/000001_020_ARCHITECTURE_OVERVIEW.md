# ============================================================
# 020_ARCHITECTURE OVERVIEW
# ============================================================

status: active
system: CommonOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_152414

## PURPOSE
This overview summarizes the role of this directory under 12.common-os.

## POSITION
This directory belongs to the CommonOS shared foundation layer.

## CONTENT SUMMARY
- subdirectory_count: 0
- file_count: 59

## INTERPRETATION RULE
This folder must remain additive-only and aligned to the CommonOS shared foundation boundary.

## NON-GOALS
- business transaction canon
- secrets storage
- domain-specific logic dumping

## COMMON OS ROLE
This directory defines the shared structure, layering, boundaries, and cross-OS architecture of CommonOS.

## COMMON OS RESPONSIBILITIES
- shared HTML UI foundation architecture\n- component layering\n- client/server boundary\n- app_common positioning\n- ERP applicability architecture\n- offline-first synchronization architecture

## COMMON OS NON-GOALS
- physical transaction tables\n- domain-specific business logic implementations\n- secrets and credential storage

## APP_COMMON RELATION
This directory must stay aligned with the app_common boundary rule:
- shared mutable metadata may be modeled or referenced
- business canon remains domain-owned
- secrets must not be stored here

## ERP RELATION
This directory may support ERP shared UI applicability where relevant,
but it must not absorb ERP business canon.

## OFFLINE-FIRST RELATION
Where applicable, this directory should stay compatible with:
- offline-first
- local queue
- online sync

## INTERPRETATION RULE
CommonOS standardizes shared UI and shared metadata direction.
It must not become a dumping ground for unrelated domain-specific logic.
