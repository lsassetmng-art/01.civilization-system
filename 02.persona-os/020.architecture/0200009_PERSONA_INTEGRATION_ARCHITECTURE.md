# ============================================================
# PERSONA INTEGRATION ARCHITECTURE
# ============================================================

PersonaOS integrates with external systems
through snapshots.

Integration model:

PersonaOS
↓
snapshot issuance
↓
external applications
↓
snapshot verification

External systems must not mutate PersonaOS state.

