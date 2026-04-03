# ============================================================
# LOCAL PRODUCT OUTPUT MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-retail-local-supply-linkage
component: local-product-output

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OUTPUTS
# ============================================================

local_product_outputs:
- vegetables
- grains
- fruits
- eggs
- milk
- meat
- honey
- fish
- preserved_foods


# ============================================================
# 2. FINAL RULE
# ============================================================

Local producer output
must be retail-linkable where allowed.
