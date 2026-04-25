# COMMON OS FINAL HANDOFF BUNDLE CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document is the final handoff bundle for the CommonOS common-only track in this chat.

## Final fixed facts
- 12.common-os is the shared foundation canon
- app_common is the shared mutable metadata schema candidate
- CommonOS owns shared UI, shared presentation, shared token, shared shell, shared queue presentation, and related shared-foundation metadata direction
- business canon remains in each OS / app / ERP
- OS-specific CommonOS adoption planning belongs in each OS chat
- offline-first + local queue + online sync is standard
- queue presentation is commonized and queue meaning remains domain-owned

## CommonOS-side completed design areas
- shared-foundation position and boundary
- application common component canon
- app_common reviewed canonical table direction
- Tier1 DDL direction
- RLS / published-read direction
- execution-ready migration bundle direction
- rollout batch and apply-gate direction
- common-only freeze and handoff direction

## Not completed here
- OS-specific adoption plans
- target-specific implementation bundles
- final production execution approval
- production role mapping approval
- target DB selection as a deployment decision

## Natural continuation in this chat
- small cleanup
- naming / numbering repair if needed
- final report polishing if needed

## Natural continuation outside this chat
- each OS chat creates its own CommonOS adoption plan using CommonOS as prerequisite canon
