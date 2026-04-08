# ============================================================
# POCKET SECRETARY CONSULTATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific consultation interface
on top of the shared Consultation Common.

common reference:
PersonaOS consultation common interface expectations define:
- bounded consultation entry
- advisory consultation output
- concise scope-aware interaction

PocketSecretary-specific interface:
tiers:
- pro: personal consultation
- enterprise: personal consultation plus
  company-secretary business consultation

required UI elements:
- consultation entry surface
- consultation session surface
- consultation summary area
- follow-up guidance area

enterprise business consultation may expose:
- document support mode
- strategy support mode
- problem-solving mode
- workflow next-step mode

rules:
- consultation remains advisory
- consultation output must not imply approval authority
- enterprise work proposals must remain distinguishable from formal execution
