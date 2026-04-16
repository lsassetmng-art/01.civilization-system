# PERSONA BUILDER DEVELOPMENT GUIDE

status: implementation-ready-followup

delivery_order:
1. draft create/read/update
2. section-level edit with optimistic concurrency
3. validation endpoint and result persistence
4. approval request and decision persistence
5. publish request, release cut, and apply integration

required_controls:
- draft_version exact increment
- conflict response exact contract
- validation block list fixed
- publish precondition fixed
- audit actor and timestamp mandatory
