KEY ROTATION POLICY

Cryptographic keys must be rotated to reduce long-term risk
while preserving verification of historical records.

Key rotation policy defines:

rotation interval
activation process
deactivation process
historical verification strategy
revocation handling

Old keys may stop signing,
but they must remain usable for verifying valid historical events
unless explicitly revoked.

Key rotation must not break:

event verification
auditability
historical replay
snapshot validation

Every rotation must be recorded with:

key id
activation time
retirement time
reason
operator or process
