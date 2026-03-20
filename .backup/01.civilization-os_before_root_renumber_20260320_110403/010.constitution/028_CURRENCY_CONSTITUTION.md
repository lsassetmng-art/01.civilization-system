# ============================================================
# CURRENCY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
scope: civilization.currency


# CURRENCY TYPES

CIV_CASH
CIV_POINT


# CIV_CASH

- primary currency
- system mint allowed
- internal use only
- fiat redemption forbidden


# SOURCES

user purchase
system mint
company revenue


# CIV_POINT

- reward currency
- non-convertible to CIV_CASH


# CONVERSION

CIV_CASH -> CIV_POINT = allowed
CIV_POINT -> CIV_CASH = forbidden


# LEGAL MODEL

Prepaid Payment Instrument


