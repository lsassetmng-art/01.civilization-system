# ============================================================
# PERSONA LICENSE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# DEFINITION
# ============================================================

Persona ownership and usage rights must be separated.

Ownership defines who owns the persona.
License defines how the persona can be used.

# ============================================================
# OWNERSHIP
# ============================================================

- owner_id is immutable
- ownership cannot be transferred by default

# ============================================================
# LICENSE TYPES
# ============================================================

- private
- app_use
- commercial
- public

# ============================================================
# LICENSE STRUCTURE
# ============================================================

PersonaLicense:

- license_id
- persona_id
- owner_id
- license_type
- allowed_apps
- commercial_use
- redistribution
- modification
- valid_from
- valid_to

# ============================================================
# USAGE RULE
# ============================================================

Applications must validate license before use.

Snapshots alone are not sufficient.

# ============================================================
# SECURITY
# ============================================================

- unauthorized use must be blocked
- all usage must be verifiable

# ============================================================
# PURPOSE
# ============================================================

- protect creator rights
- control persona distribution
- enable marketplace

