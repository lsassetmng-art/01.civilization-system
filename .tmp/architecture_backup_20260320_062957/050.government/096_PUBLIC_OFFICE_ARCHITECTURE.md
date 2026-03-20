# ============================================================
# PUBLIC OFFICE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Public office is a role held by eligible governance actors.

eligible_holders:
- ai_human
- player, if office law permits

ineligible_holders:
- ai_robot

roles:
- tax_officer
- audit_officer
- treasury_manager
- policy_executor
- judge
- police_commander

constraints:
- current office restrictions may limit election candidacy
- office power is bounded by law and nation type
