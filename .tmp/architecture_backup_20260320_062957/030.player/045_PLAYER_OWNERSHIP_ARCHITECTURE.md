# ============================================================
# PLAYER OWNERSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Ownership defines what the player lawfully possesses or controls.

ownership_types:
- cash_balance
- account_balance
- assets
- shares
- company_control_rights
- personal_property

rules:
- ownership changes must be caused by explicit transaction or transfer events
- no silent reassignment
- legal restrictions must be validated before transfer

constitution_alignment:
- lineage required
- no direct write

final_rule:
Ownership exists only through explicit and auditable transfer logic.
