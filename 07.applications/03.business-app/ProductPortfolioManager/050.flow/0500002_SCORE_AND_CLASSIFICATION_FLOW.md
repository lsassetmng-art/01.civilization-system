# ============================================================
# SCORE AND CLASSIFICATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

flow:
1. load metric snapshot
2. calculate or fetch score
3. inspect score rationale
4. generate or inspect classification suggestion
5. create or update draft
6. submit for approval if required
7. finalize approved classification
