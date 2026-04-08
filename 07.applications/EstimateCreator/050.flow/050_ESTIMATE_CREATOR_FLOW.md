# ============================================================
# ESTIMATE CREATOR FLOW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY FLOW
# ============================================================

The primary EstimateCreator business flow is:

1. login
2. open workspace
3. select customer or customer context
4. create or open estimate
5. edit line items and estimate conditions
6. add opportunity memo and/or meeting memo
7. optionally reference inventory
8. optionally share estimate-related objects
9. optionally prepare ERP publication
10. sync online when possible
11. receive publication/share results
12. continue revision cycle if needed

# ============================================================
# 2. DEFAULT ESTIMATE FLOW POSITION
# ============================================================

The default estimate flow produces a rough estimate.

The flow must not silently convert a rough estimate
into authoritative ERP formal issuance.

# ============================================================
# 3. LOCAL FORMAL USE EXCEPTION FLOW
# ============================================================

Where policy allows local formal use:

- estimate record is explicitly marked
- audit/history is preserved
- approval trace is preserved where required
- publication to ERP remains separately modeled


# ============================================================
# 4. ENTRY FLOWS
# ============================================================

EstimateCreator supports:

- standalone launch flow
- deeplink launch flow
- unified workspace entry flow

These are equally valid operational entry flows.

# ============================================================
# 5. STANDALONE LAUNCH FLOW
# ============================================================

1. app opened directly
2. login checked
3. if needed, login screen shown
4. session established
5. workspace entered

# ============================================================
# 6. DEEPLINK LAUNCH FLOW
# ============================================================

1. deeplink received
2. launch context parsed
3. shared BusinessOS session resolved
4. session validated
5. route context validated
6. target workspace entered without redundant login UI when valid

