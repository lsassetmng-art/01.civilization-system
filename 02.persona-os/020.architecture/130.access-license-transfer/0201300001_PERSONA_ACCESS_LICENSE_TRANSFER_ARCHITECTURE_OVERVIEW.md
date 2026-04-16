# ============================================================
# PERSONA ACCESS LICENSE TRANSFER ARCHITECTURE OVERVIEW
# ============================================================

status: implementation-ready-followup
domain: access-license-transfer

rights_split:
- license defines usage conditions
- access grant defines scope and duration of access
- transfer defines ownership or stewardship lineage

required_rights_controls:
- separate lifecycle per contract type
- illegal cross-state transition rejection
- audit actor and reason
- independent revoke/expire handling
