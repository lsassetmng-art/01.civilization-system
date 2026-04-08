# ============================================================
# CONNECTION RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime selection of DB connection profiles.

runtime_steps:
1. inspect SQL or DB-related target need
2. query available connection profiles
3. filter by environment
4. filter by read/write / DDL permission
5. filter by production allowance
6. attach best-fit connection candidates
