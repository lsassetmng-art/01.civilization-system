# ============================================================
# STATIC ART OS UPPER CANON ALIGNMENT ACTION LIST
# ============================================================

status: active-action-list
system: StaticArtOS
owner: Boss
prepared_by: Zero

actions_now:
- keep Persona integration snapshot-consumption based only
- keep direct mutation to Persona canonical state banned
- keep common component status as candidate unless official ledger adopts it
- keep StaticArtOS business/governance core separate from Persona canonical ownership
- keep future wording additive rather than rewriting core domain semantics

actions_when_implementing:
- verify DB additions do not introduce persona core duplicates
- verify API additions expose reference/snapshot only
- verify UI additions use signed snapshot basis for creator/public/exhibition display
- verify tests cover no-duplication and no-direct-mutation rule
- verify shared component extraction does not remove canonical ownership from StaticArtOS prematurely

do_not_do:
- do not create local persona core tables
- do not create direct Persona canonical mutation routes
- do not treat local persona cache as truth
- do not mark StaticArtOS candidates as official common components locally
- do not blur asset lifecycle with Persona mutable state lifecycle
