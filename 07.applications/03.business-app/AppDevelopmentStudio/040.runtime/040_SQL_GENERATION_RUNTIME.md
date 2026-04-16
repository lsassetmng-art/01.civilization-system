# ============================================================
# SQL GENERATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime behavior for SQL generation.

runtime_steps:
1. resolve database requirement
2. resolve connection profile candidates
3. resolve schema strategy
4. generate DDL / DML / function candidates
5. classify SQL safety class
6. attach execution feasibility notes
7. create SQL proposal

sql_safety_class_examples:
- select_safe
- write_guarded
- ddl_guarded
- destructive_high_risk

outputs:
- SQL proposal
- connection suitability notes
- safety classification
- execution warning list
