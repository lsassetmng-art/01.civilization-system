FAILOVER POLICY

Failover policy defines how the system switches
from a failed component to a backup execution path.

Failover is intended to preserve continuity
without violating integrity.

Failover may apply to:

runtime services
database endpoints
message routing
integration gateways

Failover must preserve:

ordering assumptions where required
traceability
authorization checks
verification behavior

Failover is not allowed to create a weaker trust model.

If backup capacity exists but verification cannot be guaranteed,
the system must prefer fail closed over unsafe continuation.
