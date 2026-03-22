# ============================================================
# PERSONA DATABASE MIGRATION POLICY
# ============================================================

status: canonical
component: persona-database-migration

owner: Boss
prepared_by: Zero

# PURPOSE

Define safe schema evolution
for PersonaOS database.

# MIGRATION PRINCIPLES

Database changes must be:

versioned
reversible where possible
tested before production

# MIGRATION TYPES

schema creation  
column addition  
index creation  
policy updates

# FORBIDDEN ACTIONS

Dropping critical tables without migration plan.

