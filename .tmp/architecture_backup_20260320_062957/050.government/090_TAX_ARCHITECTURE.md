# ============================================================
# TAX ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Tax is imposed by nation and platform according to separate layers.

tax_types:
- corporate_tax
- platform_fee
- wage_tax (future extension)
- transaction_tax (future extension)

corporate_tax:
- paid in national_currency
- based on nation-defined tax model
- may use score-based or law-defined structure

platform_fee:
- applied at monthly settlement
- base_rate: 30%
- reduced_rate: 20% when condition is satisfied
- no fee above defined platform fee model

principles:
- state tax is legal layer
- platform fee is system settlement layer
- both are separate
