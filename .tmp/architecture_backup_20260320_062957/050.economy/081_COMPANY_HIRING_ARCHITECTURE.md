# ============================================================
# COMPANY HIRING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Company hiring is a multi-stage evaluation process.

# ============================================================
# STRUCTURE
# ============================================================

company:
- company_id
- requires_exam
- interview_count

job_posting:
- job_id
- required_skills
- required_certifications

# ============================================================
# FLOW
# ============================================================

application
→ document screening
→ exam (optional)
→ interviews
→ result

# ============================================================
# EVALUATION
# ============================================================

- skills
- certifications
- exam score
- interview score

# ============================================================
# RULE
# ============================================================

- hiring conditions must be configurable per company
- multiple interview rounds allowed
- recommendation may affect results

# ============================================================
# PURPOSE
# ============================================================

- simulate real-world hiring
- connect education to employment
- enable diverse career paths

