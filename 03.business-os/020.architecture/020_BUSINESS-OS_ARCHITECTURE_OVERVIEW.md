# ============================================================
# BUSINESS OS ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture overview of BusinessOS.

core architecture domains:
- business event and dispatch architecture
- persona connection architecture
- integration boundary architecture
- business ai worker architecture
- submission common architecture
- access control architecture

business ai worker role:
BusinessOS owns the company-scoped operation layer for work-use AI.

included worker concepts:
- company_secretary
- business_consultant
- ai_employee

boundary:
PersonaOS may define persona-capable template semantics.
BusinessOS defines employment, assignment, knowledge growth,
usage scope, and company operation truth.
