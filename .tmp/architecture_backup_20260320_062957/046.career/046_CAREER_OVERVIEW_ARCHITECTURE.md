# ============================================================
# CAREER OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: career

definition:
Career governs employment selection, internship, written exams,
interviews, and hiring decisions.

subdomains:
- job_application
- recruitment_policy
- written_exam
- interview
- hiring
- internship

principles:
- companies define official selection structure explicitly
- written exam and interview are configurable per company
- official results and practice history must remain separated
- internship is school-recommendation-gated

final_rule:
Career progression must be explicit, configurable, and auditable.
