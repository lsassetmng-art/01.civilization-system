# ============================================================
# PROJECT FLOW EXACT OPEN ITEM RESOLUTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
States that the major design bottlenecks
have been resolved to exact-design level where appropriate.

resolved_to_exact_design_level:
- BusinessOS exact payload direction
- ERP / ProjectFlow field mapping interpretation
- DB hardening review buckets and stop conditions
- WBS proposal exact calculation rules for initial scope

still_explicitly_open_but_non_blocking:
- final Android module naming
- DI framework choice
- offline/cache strategy
- RLS final execution design
- holiday-calendar sophistication beyond weekday_only
