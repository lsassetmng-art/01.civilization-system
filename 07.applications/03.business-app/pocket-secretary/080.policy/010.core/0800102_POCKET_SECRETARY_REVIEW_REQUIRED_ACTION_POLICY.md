# ============================================================
# POCKET SECRETARY REVIEW REQUIRED ACTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Actions with external, legal, organizational, or financial consequence
must require explicit review and confirmation.

covered actions:
- ERP-facing submissions
- identity-bearing requests
- external transmission of sensitive request content
- actions that may create real-world commitments

rules:
- draft, review, submit, and confirm are separate stages
- review bypass is prohibited
- ambiguous execution state must block finalization
