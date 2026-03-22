# BUSINESS GROWTH SYNC RETRY OPERATION

status: canonical
layer: operations
domain: integration
owner: Boss
prepared_by: Zero

## OPERATION
- detect failed growth sync requests
- apply retry backoff
- preserve idempotency by request id
- escalate repeated failures to audit/ops
