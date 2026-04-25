# ============================================================
# BUSINESS ERP ORIGIN COMMERCIAL FLOW RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the ERP-origin rule for persona-related commercial flows.

rule:
- Commercial flows that involve ERP sending must originate from BusinessOS.
- PersonaOS must not become the ERP-origin authority for persona commercial truth.

erp_origin_scope:
- order export
- billing export
- invoicing export
- approval-related commercial export
- revenue-related commercial export
- entitlement-commercial export when ERP-facing truth is needed

persona_limit:
- PersonaOS may receive applied commercial consequences.
- PersonaOS may not act as the final ERP-facing source of commercial truth.

result:
- ERP-facing commercial flow origin fixed to BusinessOS.
