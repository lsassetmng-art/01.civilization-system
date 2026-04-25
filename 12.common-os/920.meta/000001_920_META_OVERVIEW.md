# ============================================================
# 920_META OVERVIEW
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
- subdirectory_count: 3
- file_count: 2

## INTERPRETATION RULE
This folder must remain additive-only and aligned to the CommonOS shared foundation boundary.

## NON-GOALS
- business transaction canon
- secrets storage
- domain-specific logic dumping

## COMMON OS ROLE
This directory stores reports, run logs, execution traces, and generated audit artifacts for CommonOS.

## COMMON OS RESPONSIBILITIES
- execution reports\n- repair logs\n- migration/move logs\n- verification summaries

## COMMON OS NON-GOALS
- primary design canon\n- business transaction canon\n- secret storage

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
