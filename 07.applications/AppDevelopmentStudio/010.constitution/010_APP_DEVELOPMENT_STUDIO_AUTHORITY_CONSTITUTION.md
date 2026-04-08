# ============================================================
# APP DEVELOPMENT STUDIO AUTHORITY CONSTITUTION
# ============================================================

status: canonical-draft
layer: constitution
system: applications
application: App Development Studio

purpose:
Defines authority boundaries inside App Development Studio.

authority_principle:
Authority is configurable but never undefined.

The application may perform generation, apply, SQL execution,
Git commit, Git push, and related actions,
but only within an explicit authority model.

authority_layers:
1. user intent authority
2. rule authority
3. environment authority
4. safety escalation authority
5. execution authority
6. tracking authority

user_intent_authority:
User intent starts the action chain.
The user may choose input mode, automation level,
review mode, approval mode, build mode,
Git mode, and versioning mode.

rule_authority:
Configured rule profiles define what is allowed,
recommended, blocked, or escalated.

environment_authority:
Environment capability constrains action.
For example:
- some environments may generate but not build
- some environments may build but not Git push
- some environments may allow SQL draft only

safety_escalation_authority:
Even when review skipping or auto-apply is enabled,
dangerous actions may be escalated to stronger control.

Examples:
- destructive SQL
- production-facing SQL execution
- protected branch push
- shared component overwrite
- shared rule overwrite

execution_authority:
Execution authority determines whether the application may:
- draft only
- generate and retain
- generate and apply
- generate and execute SQL
- generate and commit
- generate and push
- generate and build

tracking_authority:
Every meaningful action may be tracked according to audit settings.

authority_modes_example:
- strict
- balanced
- speed-first
- custom

constitutional_constraints:
- authority must be explicit
- authority must be reviewable
- authority must be configurable
- authority must respect environment capability
- authority must respect protected operations

summary:
App Development Studio is allowed to do powerful actions,
but only under explicit authority boundaries chosen and governed by the user.
