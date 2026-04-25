# COMMON OS SECRET EXCLUSION POLICY CANONICAL

status: canonical
layer: security

## Never store in CommonOS client assets
- API secrets
- service role keys
- database connection secrets
- privileged system prompts
- server-only approval logic

## Purpose
CommonOS distributes reusable presentation, not privileged authority.
