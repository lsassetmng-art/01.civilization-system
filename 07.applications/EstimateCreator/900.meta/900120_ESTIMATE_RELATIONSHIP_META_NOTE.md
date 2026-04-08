# ============================================================
# ESTIMATE RELATIONSHIP META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# REVIEW FOCUS
# ============================================================

Relationship review must verify consistency between:

- estimate and line item
- estimate and opportunity memo
- estimate and meeting memo
- estimate and QA
- estimate and inventory reference
- estimate and publication state
- estimate and sync/share state

# ============================================================
# CHECKPOINTS
# ============================================================

- estimate_record remains the parent business object
- child objects do not replace estimate authority
- memo/share/publication/sync remain separate concerns
- inventory is linked as reference only

