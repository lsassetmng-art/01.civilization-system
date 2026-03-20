# ============================================================
# PRODUCT GROUP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

The same conceptual product may be sold in different currencies.

Each currency variant must be registered as a separate product.

# ============================================================
# STRUCTURE
# ============================================================

product:
- product_id
- product_group_id
- currency_type
- price

# ============================================================
# RULES
# ============================================================

- one product = one currency
- same product_group_id = same conceptual product
- different currencies require different product entries

# ============================================================
# CONSTRAINTS
# ============================================================

Within a product_group:

- only one product per currency_type is allowed

# ============================================================
# PURCHASE RULE
# ============================================================

By default:

- only one product per group can be owned

Exception:

- consumable items can be purchased multiple times

# ============================================================
# BENEFITS
# ============================================================

- simple payment model
- no mixed currency complexity
- clear ownership logic

