# ============================================================
# ESTIMATE ERP WIDE SHARE APPROVAL FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator may prepare estimate publication requests
that pass through shared BusinessOS ERP publication approval handling.

High-level flow:

1. validate publication readiness
2. build publication request
3. submit to shared publication capability
4. wait for approval-linked processing
5. receive result
6. update local publication state

