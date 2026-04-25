# COMMON OS CLIENT SERVER BOUNDARY CANONICAL

status: canonical
layer: security

## Boundary rule
The client receives reusable presentation assets and local runtime state. The server retains authoritative business decisions.

## Client-side allowed
- tokens
- component metadata
- locale text
- templates
- queue presentation metadata
- local drafts
- temporary attachment references
- sync status

## Server-side required
- pricing decisions
- entitlement decisions
- access decisions
- approval authority
- audit decisions
- domain transaction truth
