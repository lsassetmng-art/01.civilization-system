# ============================================================
# EVALUATION SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Evaluation represents the quantified social value of a persona.

# ============================================================
# COMPONENTS
# ============================================================

evaluation factors:

- skill_score
- knowledge_score
- experience_score
- behavior_score
- achievement_score

# ============================================================
# ROLE MAPPING
# ============================================================

role is determined by score range

# ============================================================
# RULE
# ============================================================

- evaluation must be recalculated periodically
- role must be derived from evaluation
- all mappings must be database-controlled
- historical evaluation must be stored

# ============================================================
# PURPOSE
# ============================================================

- simulate social hierarchy
- determine career progression
- drive salary calculation

