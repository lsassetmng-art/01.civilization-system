# ============================================================
# POCKET SECRETARY ENTERPRISE DRAFT SUBMISSION INTEGRATION
# ============================================================

status: reduced-scope
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific external submission integration
for remaining enterprise submission domains.

common reference:
BusinessOS submission common defines:
- external API submission only
- explicit submission only
- draft alignment principle

covered draft domains:
- ERP application draft

rules:
- PocketSecretary submission occurs through ERP external API only
- direct ERP database write is prohibited
- explicit application button action is required
- draft, transport send, and ERP-side acceptance remain distinct
