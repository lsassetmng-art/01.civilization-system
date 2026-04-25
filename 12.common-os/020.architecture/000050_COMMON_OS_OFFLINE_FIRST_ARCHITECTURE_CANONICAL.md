# COMMON OS OFFLINE FIRST ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Standard model
- UI is operable on local state first
- draft and edit state can be stored locally
- send-intent can be placed into a local outbox queue
- server sync occurs when conditions permit
- user-facing queue state is standardized by CommonOS
- business meaning of queue items remains domain-owned

## Local persistence categories
- UI assets cache
- structured local state
- local outbox queue
- temporary local attachment storage

## Sync triggers
- app launch
- foreground resume
- network recovery
- manual sync
- sendability satisfied
