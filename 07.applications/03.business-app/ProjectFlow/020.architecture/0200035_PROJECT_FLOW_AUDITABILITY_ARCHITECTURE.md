# ============================================================
# PROJECT FLOW AUDITABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines auditability,
history,
and traceability boundaries.

auditability_domains:
- project header changes
- task and milestone changes
- issue and risk changes
- time entry changes
- sync request and sync result visibility
- report draft review progression
- schedule proposal adjustment and confirmation
- customer-facing material generation and export awareness

architecture_rules:
- operational truth changes should remain traceable
- proposal adjustment should remain distinguishable from confirmed truth
- review progression should remain distinguishable from export execution
- sync boundary history should remain inspectable
- audit visibility should support customer-facing explanation accountability where needed
