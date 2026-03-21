# BUSINESS INTEGRATION SECURITY

status: canonical
layer: security
domain: integration
owner: Boss
prepared_by: Zero

## RULES
- external integration references must be explicit
- sync direction must be defined
- failed sync must be detectable
- unverified external state must not silently mutate local truth
