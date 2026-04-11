# ============================================================
# NAMECARD SHARE VISIBILITY IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation rules for exact share/visibility/revoke behavior.

implementation_rules:
- evaluate authorization before composing response fields
- shared_viewer field suppression must be server-side enforced
- revoke must remove effective visibility immediately on next evaluation
- audit share apply/revoke events
- do not overload ERP publication state with app share state
- keep share link and publication state separated

