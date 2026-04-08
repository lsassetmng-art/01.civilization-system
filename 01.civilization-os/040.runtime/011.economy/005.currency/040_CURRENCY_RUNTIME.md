# ============================================================
# CURRENCY
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for currency and rate usage.

# 2. RUNTIME STATE

- active currency definition state
- active rate resolution state
- scope validation state
- freeze/unfreeze state

# 3. EXECUTION RULES

- one currency code resolves to one active definition
- one effective rate pair must resolve for one time point
- frozen currency must block runtime use
- scope validation must complete before price/payment use

# 4. FAILURE HANDLING

- duplicate active currency code -> reject
- ambiguous active rate -> reject
- frozen currency use -> reject
- invalid scope binding -> fail closed

