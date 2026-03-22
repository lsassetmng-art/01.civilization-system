# ============================================================
# MODEL
# ============================================================

model_id: 0301000001
model_name: finance_account

domain: 0100.finance
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents financial identity of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Finance account represents financial
identity and account structure
associated with a persona.


# ============================================================
# RELATIONS
# ============================================================

finance_account
 -> transaction
 -> budget
