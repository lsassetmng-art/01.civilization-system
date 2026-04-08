# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. relevant local or bounded Persona-linked state changes
2. presentation eligibility is checked
3. presentation state is resolved
4. Persona view/emotion/render parameters are updated
5. dashboard or relevant screen refreshes
6. fallback rendering is used if needed

rules:
- Persona presentation flow is presentation-only
- presentation transition must not grant authority
