# COMMON OS FOUNDATION RULES CANONICAL

status: canonical
layer: constitution

## Foundation rules
1. CommonOS is the shared foundation root.
2. CommonOS is not a business-truth OS.
3. CommonOS-specific rules live in 12.common-os.
4. Parent system-wide rules remain above CommonOS and are referenced, not duplicated.
5. Shared UI is standardized.
6. Business canon stays in each domain.
7. app_common is for shared mutable metadata, not domain truth.
8. ERP is a first-class CommonOS adoption target.
9. Offline-first, local queue, and online sync are standard.
10. Secrets and authoritative decision logic stay server-side.

## Interpretation rule
When CommonOS design conflicts with domain truth, domain truth wins for business meaning while CommonOS remains authoritative for reusable presentation patterns.
