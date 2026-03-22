SIGNING LIFECYCLE

Signing lifecycle defines how a signing key moves through
its operational states.

Typical lifecycle

generated
registered
activated
used for signing
rotated
retired
revoked if necessary

The lifecycle must be visible and auditable.

Each signing state affects what the system may do:

generated   -> not yet trusted
active      -> may sign
retired     -> may verify history but not sign
revoked     -> must not be trusted

Signing lifecycle must remain compatible with
runtime verification and historical traceability.

No event should become unverifiable
simply because lifecycle handling was neglected.
