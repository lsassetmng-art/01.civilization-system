# ============================================================
# POCKET SECRETARY ERP DOCUMENT ALIGNMENT CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary business draft documents must align
with the corresponding ERP formal document structures.

covered alignment:
- quotation draft aligns to ERP quotation document
- order draft aligns to ERP sales order document

rules:
- PocketSecretary must not invent conflicting business meaning
  for draft documents
- PocketSecretary draft documents are simplified draft surfaces,
  but their business field semantics must remain aligned
  with ERP-side formal documents
- draft state and ERP-accepted formal document state
  must remain distinct
- lower layers must preserve alignment of meaning,
  even if UI is simplified

prohibitions:
- conflicting field semantics between PocketSecretary draft
  and ERP formal document
- treating simplified draft UI as permission
  to redefine ERP document meaning
