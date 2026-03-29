# ============================================================
# BUSINESS USER SCOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official user-scope truth model of BusinessOS.

BusinessOS is primarily user-scoped.
It hosts user-oriented small business applications
with app-level paid features.

Some BusinessOS apps may send real operational data to ERP,
for example:
- travel expense data
- business card data

When sending to ERP,
BusinessOS attaches company context,
because ERP is company-scoped.


# ============================================================
# 1. PRIMARY TRUTH HOLDER
# ============================================================

The default truth holder of BusinessOS is the user.

BusinessOS must not treat:
- company
- company tenant
- enterprise org

as the default top-level truth holder.


# ============================================================
# 2. USER-SCOPE DOMAINS
# ============================================================

Typical user-scope domains may include:
- travel expense draft/entry
- business card entry/management
- contacts
- lightweight sales tracking
- lightweight inventory notes
- lightweight customer notes
- task and schedule support
- personal business utilities


# ============================================================
# 3. ERP-SEND EXCEPTION
# ============================================================

ERP-send is an exception path.

When a BusinessOS app sends data to ERP,
the payload must attach:
- company_id
- user/employee linkage where required
- app context
- payload type
- mapping profile where required

This does not change BusinessOS primary truth scope.


# ============================================================
# 4. FINAL RULE
# ============================================================

BusinessOS truth is primarily user-scoped.

Core summary:

- user is the default truth holder
- apps are user-oriented
- ERP-send adds company context only at send time
