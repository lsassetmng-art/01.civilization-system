# ============================================================
# PERSONA MARKETPLACE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Persona Marketplace is a system for trading persona licenses.

Personas themselves are not sold.
Only usage rights (licenses) are distributed.

# ============================================================
# STRUCTURE
# ============================================================

- listing
- purchase
- license issuance

# ============================================================
# LISTING
# ============================================================

MarketplaceListing:

- listing_id
- persona_id
- snapshot_id
- seller_id
- license_template
- price
- currency_type
- active

# ============================================================
# PURCHASE
# ============================================================

Purchase:

- buyer_id
- listing_id
- price
- currency_type
- purchased_at

# ============================================================
# LICENSE
# ============================================================

- license is generated per purchase
- license defines usage rights
- license is bound to buyer

# ============================================================
# CURRENCY
# ============================================================

- sales can use multiple currency types
- real_money is cashable
- national_currency is internal only

# ============================================================
# RULES
# ============================================================

- persona ownership is never transferred
- snapshot is not duplicated
- license is required for usage

# ============================================================
# SECURITY
# ============================================================

- unauthorized use must be blocked
- license validation is mandatory

# ============================================================
# PURPOSE
# ============================================================

- enable creator economy
- distribute persona assets
- support cross-application usage

