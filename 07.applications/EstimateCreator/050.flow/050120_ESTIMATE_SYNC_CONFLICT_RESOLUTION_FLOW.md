# ============================================================
# ESTIMATE SYNC CONFLICT RESOLUTION FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Conflict resolution flow:

1. detect conflict
2. freeze conflicting automatic overwrite
3. present conflict state explicitly
4. review local and remote versions
5. select resolution path
6. record decision in audit/history
7. requeue sync if necessary

