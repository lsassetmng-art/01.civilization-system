# ============================================================
# POCKET SECRETARY PLAN BOUNDARY INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines feature visibility and interaction boundary by plan.

plan UI rules:
- free must not expose AI secretary interaction as active capability
- pro may expose personal AI secretary and personal consultation
- enterprise may expose company-secretary capabilities
  and business draft/application surfaces

notes:
Plan restrictions must be reflected in actual visible behavior,
not only in hidden backend checks.
