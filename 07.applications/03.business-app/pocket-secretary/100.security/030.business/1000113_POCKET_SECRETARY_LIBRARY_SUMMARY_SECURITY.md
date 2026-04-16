# ============================================================
# POCKET SECRETARY LIBRARY SUMMARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security constraints for document summary inside Library.

rules:
- summary availability must remain distinct from file existence
- summary generation must not broaden file exposure by default
- library summary is enterprise-bounded where applicable
- summary output must remain bounded to the user-visible purpose
