# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user selects EstimateCreator or NameCardManager entry
2. PocketSecretary determines target mode
3. bounded launch context may be prepared
4. PocketSecretary issues Deep Link launch
5. if launch succeeds, control transfers to target app
6. if launch fails, install guidance is shown

rules:
- launch and business success remain distinct
- launch and submission remain distinct
