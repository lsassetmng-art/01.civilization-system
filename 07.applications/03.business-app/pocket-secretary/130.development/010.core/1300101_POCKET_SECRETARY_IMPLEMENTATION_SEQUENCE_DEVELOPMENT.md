# ============================================================
# POCKET SECRETARY IMPLEMENTATION SEQUENCE DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

recommended sequence:
1. local persistence foundation
2. dashboard and core UI shell
3. todo and schedule local workflows
4. notification runtime support
5. Persona presentation support
6. sync state handling
7. ERP request draft and review support
8. bounded external integration hardening

rules:
- core local usability should ship before optional external dependence
- review-required flows should precede automated convenience flows
