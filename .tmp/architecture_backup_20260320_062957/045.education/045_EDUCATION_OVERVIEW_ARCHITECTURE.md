# ============================================================
# EDUCATION OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: education

definition:
Education governs school admission, study, training, recommendation,
and qualification preparation.

purpose:
- structure learning progression
- connect schools, training, and certifications
- support player preparation and formal evaluation separation

subdomains:
- school
- entrance_exam
- certification_exam
- training
- recommendation
- learning_content_linkage

principles:
- official evaluation and practice must be separated
- schools may choose whether entrance exams are required
- persona may assist answers, but player is final confirmer
- recommendation must be explicit
- education events may grant skill through explicit source records

final_rule:
Education must explicitly manage access, preparation, recommendation,
and learning outcomes without bypassing exam or validation systems.
