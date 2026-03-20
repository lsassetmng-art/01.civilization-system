# FAILURE RUNTIME

purpose:
Handle runtime failures safely.

failure cases:
invalid event
invalid transition
broken relation path
metric recompute failure
snapshot failure
branch isolation failure

rule:
fail closed
record reason
preserve audit trail
