
# ============================================================
# ESTIMATE DELIVERY STATE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Delivery state policy:

- delivery state must be explicit
- delivery state must not be reused as publication state
- opened does not imply accepted
- expired does not imply rejected
- revoked must remain explicit where readonly link access is disabled
- resend must create traceable delivery history rather than overwrite prior delivery meaning

