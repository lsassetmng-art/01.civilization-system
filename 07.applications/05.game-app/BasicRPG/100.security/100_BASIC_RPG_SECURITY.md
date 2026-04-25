# ============================================================
# BASIC RPG SECURITY
# ============================================================

status: draft
layer: security
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

security_focus:
- auth/session protection
- purchase receipt validation
- battle tamper detection
- save conflict and overwrite protection
- entitlement revocation handling
- admin/liveops permission partition

hard_rules:
- premium mutation requires auditable source
- reward grant must be idempotent
- direct client authority over paid currency is forbidden
