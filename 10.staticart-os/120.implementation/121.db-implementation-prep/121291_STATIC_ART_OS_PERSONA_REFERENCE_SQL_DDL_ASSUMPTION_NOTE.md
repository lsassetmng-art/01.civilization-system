# ============================================================
# STATIC ART OS PERSONA REFERENCE SQL DDL ASSUMPTION NOTE
# ============================================================

status: active-assumption-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Clarify the assumptions and intentionally deferred points in the
Persona reference exact DDL.

assumptions:
- StaticArtOS remains signed-snapshot-consumption only.
- Persona canonical mutable state remains outside StaticArtOS.
- External asset canonical table exact name is not frozen in this pack.
- Therefore external FK to asset master is intentionally deferred here.

what_is_fixed_now:
- exact table names
- exact columns
- PK / UK
- internal FK between Persona-reference tables
- CHECK constraints
- index plan
- target surface code restrictions
- result code restrictions

what_is_deferred:
- external FK to asset canonical master table
- trigger/update_timestamp policy
- RLS policy
- grants/ownership policy
- migration wrapper / rollback script
- pgcrypto extension enablement command execution

important_rule:
- When actual DB implementation begins, this DDL should be the base.
- External FK can be added later after the asset canonical table exact name is frozen.
- No deferred point may be used to justify Persona core duplication or direct mutation.
