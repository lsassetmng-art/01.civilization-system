# ============================================================
# MODEL
# ============================================================

model_id: 0301100001
model_name: security_identity

domain: 0110.security
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents security identity of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Security identity defines authentication
and authorization identity associated
with a persona.


# ============================================================
# RELATIONS
# ============================================================

security_identity
 -> access_policy
 -> credential
