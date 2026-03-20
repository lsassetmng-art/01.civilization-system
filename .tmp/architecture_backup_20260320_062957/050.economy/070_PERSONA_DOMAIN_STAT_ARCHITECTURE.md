# ============================================================
# PERSONA DOMAIN STAT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# DEFINITION
# ============================================================

Persona strength must be defined per domain.

# ============================================================
# DOMAIN TYPES
# ============================================================

civilization
puzzle
strategy
fighting
rpg
romance
business

# ============================================================
# RULE
# ============================================================

- each domain has independent stats
- no global stat must affect all domains
- domain-specific balance must be preserved

# ============================================================
# STRUCTURE
# ============================================================

persona_domain_stat

- persona_id
- domain_type
- stat_key
- value

# ============================================================
# SKILL
# ============================================================

Skills must also be domain-specific.

# ============================================================
# PURPOSE
# ============================================================

- prevent balance collapse
- enable multi-game ecosystem
- support diverse gameplay

