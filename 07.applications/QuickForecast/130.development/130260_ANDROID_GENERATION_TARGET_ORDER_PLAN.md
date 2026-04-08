# ============================================================
# ANDROID GENERATION TARGET ORDER PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines frozen generation order after target freeze.

order:
1. core local data targets
2. core repository targets
3. core ViewModel targets
4. core screen targets
5. common UI targets
6. Pro support targets
7. Pro repository targets
8. Pro ViewModel targets
9. Pro screen targets
10. integration targets

rule:
No later group should be generated first unless required
to satisfy compile-time dependency of an earlier group.
