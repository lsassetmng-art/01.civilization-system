# ============================================================
# MODEL
# ============================================================

model_id: 0301000004
model_name: financial_activity

domain: 0100.finance
system: 03.persona_os

# PURPOSE
Represents economic action of persona.

# DESCRIPTION
Financial activity represents
economic interactions such as
payments or exchanges.

# RELATIONS
financial_activity
 -> transaction
 -> finance_account
