# COMMON OS SYNC AND RETRY FLOW CANONICAL

status: canonical
layer: flow

## Standard user flow
1. User edits locally
2. User saves draft or creates send-intent
3. Local queue entry is created
4. UI shows pending or processing
5. Sync succeeds or retries
6. UI shows sent, retry_wait, failed, or conflict

## UX rule
Retry must be understandable and actionable. Users must not need domain-specific internal knowledge to understand sync status.
