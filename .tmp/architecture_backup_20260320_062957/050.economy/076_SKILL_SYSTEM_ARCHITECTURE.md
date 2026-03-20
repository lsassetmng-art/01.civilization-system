# ============================================================
# SKILL SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# DEFINITION
# ============================================================

Skills represent specialized practical abilities.

Stats are foundational ability.
Skills are applied capability.

# ============================================================
# RULE
# ============================================================

- skills must be domain-specific
- skill level starts at 0
- 0 means unlearned
- skills grow through training, experience, and certification

# ============================================================
# STRUCTURE
# ============================================================

skill:
- skill_id
- name
- domain_type
- category
- max_level

persona_skill:
- persona_id
- skill_id
- level
- exp
- unlocked_at

# ============================================================
# EFFECT
# ============================================================

Skills affect action quality, success rate, efficiency,
and specialized capability.

# ============================================================
# RELATION TO STATS
# ============================================================

Results must depend on both stats and skills.

# ============================================================
# GROWTH
# ============================================================

Skills increase through:

- training
- experience
- certification
- education

# ============================================================
# RESTRICTION
# ============================================================

- direct paid level-up is forbidden in civilization domain
- paid support may improve training efficiency only

# ============================================================
# PURPOSE
# ============================================================

- define persona specialization
- connect effort to practical capability
- support realistic progression

