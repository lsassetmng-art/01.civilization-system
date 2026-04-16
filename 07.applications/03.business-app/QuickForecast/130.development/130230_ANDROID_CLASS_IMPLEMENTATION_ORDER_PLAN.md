# ============================================================
# ANDROID CLASS IMPLEMENTATION ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended implementation order for Android classes.

recommended_order:
1. local entities and DAOs
2. repository interfaces and repository implementations
3. core ViewModels
4. core screen classes
5. common UI components
6. Pro ViewModels
7. Pro screen classes
8. integration gateways
9. mappers and refinement

goal:
Create the local-first core before expanding Pro governance flows.
