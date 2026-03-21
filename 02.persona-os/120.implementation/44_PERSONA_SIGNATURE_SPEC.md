# ============================================================
# PERSONA SIGNATURE SPEC
# ============================================================

status: canonical
component: persona-signature

owner: Boss
prepared_by: Zero

# PURPOSE

Define cryptographic signature rules
for PersonaOS.

# ALGORITHM

Ed25519

# SIGNED OBJECTS

events
snapshots

# PROCESS

canonical JSON generation
hash calculation
signature generation
signature verification

# SECURITY PRINCIPLES

keys must be controlled
verification must be deterministic
invalid signatures must fail execution

