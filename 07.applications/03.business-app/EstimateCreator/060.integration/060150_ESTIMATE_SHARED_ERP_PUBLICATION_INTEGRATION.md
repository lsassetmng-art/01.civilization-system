# ============================================================
# ESTIMATE SHARED ERP PUBLICATION INTEGRATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

EstimateCreator integrates with the shared BusinessOS ERP publication path.

Integration rule:

- EstimateCreator prepares request
- shared publication capability executes publication path
- EstimateCreator consumes result
- final external authority remains outside local app runtime

