# ============================================================
# ANDROID PHASE 1 GENERATION SEQUENCE DETAIL PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the detailed generation sequence for Phase 1.

sequence:
1. directory structure
2. domain models
3. ui common + formatters
4. entities
5. dao
6. database
7. repositories
8. ui state contracts
9. settings reducer / viewmodel / screen
10. forecast editor reducer / viewmodel / screen
11. action board reducer / viewmodel / screen
12. proposal builder reducer / viewmodel / screen
13. profit preview reducer / viewmodel / screen
14. forecast detail reducer / viewmodel / screen
15. dashboard reducer / viewmodel / screen
16. forecast list reducer / viewmodel / screen
17. routes and nav graph
18. i18n asset files

rule:
Settings and format foundation must be available
before final screen rendering is frozen.
