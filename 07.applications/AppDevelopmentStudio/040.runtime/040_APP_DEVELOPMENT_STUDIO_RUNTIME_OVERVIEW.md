# ============================================================
# APP DEVELOPMENT STUDIO RUNTIME OVERVIEW
# ============================================================

status: canonical-draft
layer: runtime
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime behavior of App Development Studio.

runtime_goal:
To convert user-selected design input and imported design materials
into controlled engineering outputs under configurable rules,
review settings, approval settings, environment constraints,
Git policies, test policies, and tracking policies.

runtime_phases:
1. request resolution
2. input resolution
3. design parse
4. readiness assessment
5. generation mode decision
6. rule resolution
7. reusable component resolution
8. connection profile resolution
9. generation execution
10. review / approval resolution
11. apply / SQL / Git / build execution
12. verification
13. progress / version / bug / audit update

runtime_modes:
- draft only
- retained proposal mode
- approved apply mode
- SQL execution mode
- Git commit mode
- Git push mode
- build mode
- mixed mode

runtime_principles:
- input mode is explicit
- readiness is evaluated before full automation
- rules shape behavior before generation
- reuse should be considered before new creation
- connection targets should be resolved safely
- review and approval are resolved separately
- apply and Git operations are policy-controlled
- progress and audit are updated as part of runtime, not afterthoughts

summary:
The runtime is a controlled execution pipeline,
not merely a generator function.
