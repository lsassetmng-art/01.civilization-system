# ============================================================
# PERSONA DATA ARCHITECTURE
# ============================================================

PersonaOS data architecture centers on
the persona table.

Core tables:

persona
growth_events
persona_event_log
persona_snapshot

PersonaOS is the single authority
for persona state.

External systems may only consume snapshots.

