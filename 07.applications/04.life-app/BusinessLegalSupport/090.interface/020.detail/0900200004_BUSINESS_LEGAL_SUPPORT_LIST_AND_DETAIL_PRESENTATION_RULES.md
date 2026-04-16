# ============================================================
# BUSINESS LEGAL SUPPORT LIST AND DETAIL PRESENTATION RULES
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 020.detail
owner: Boss
prepared_by: Zero

list_rules:
  - list screens show status, priority, and due hint first
  - list screens should avoid dense legal text
  - expired or near-due items must be surfaced clearly

detail_rules:
  - issue detail is section-based
  - contract, deadline, risk, counterparty, attachment, consultation sections are separate
  - legal advice disclaimer remains visible around consultation-related sections

presentation_rules:
  - severity is shown by label, not by color only
  - summary first, raw notes second
  - share/export actions are secondary actions, not primary default buttons
