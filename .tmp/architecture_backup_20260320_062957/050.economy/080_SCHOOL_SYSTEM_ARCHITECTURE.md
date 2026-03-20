# ============================================================
# SCHOOL SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Schools are educational institutions that drive growth,
certification readiness, progression, and recommendation.

# ============================================================
# STRUCTURE
# ============================================================

school:
- school_id
- name
- school_type
- education_policy
- admission_exam_required
- recommendation_enabled

# ============================================================
# ADMISSION
# ============================================================

- schools may require entrance exams
- admission exam requirement is configurable per school

# ============================================================
# CURRICULUM
# ============================================================

Schools define growth focus through curriculum.

Examples:
- target domains
- target stats
- target skills
- growth weights

# ============================================================
# RECOMMENDATION
# ============================================================

Schools may issue recommendations for:

- next school
- company
- internship

# ============================================================
# RELATION
# ============================================================

Schools connect:

education
→ exams
→ certifications
→ recommendation
→ progression

# ============================================================
# RULE
# ============================================================

- admission settings must be school-specific
- recommendation must be controlled
- school data must be DB-driven

# ============================================================
# PURPOSE
# ============================================================

- structure education
- support growth
- connect learning to society

