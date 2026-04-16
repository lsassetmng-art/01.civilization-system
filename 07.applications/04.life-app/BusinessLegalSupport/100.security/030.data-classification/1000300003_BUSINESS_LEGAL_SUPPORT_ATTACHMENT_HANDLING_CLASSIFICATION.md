# ============================================================
# BUSINESS LEGAL SUPPORT ATTACHMENT HANDLING CLASSIFICATION
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 100.security
subfolder: 030.data-classification
owner: Boss
prepared_by: Zero

attachment_handling:
  categories:
    - contract_pdf
    - screenshot_evidence
    - consultation_note_image
    - reference_material

rules:
  - attachment is never auto-shared by issue share alone unless scope explicitly allows it
  - file_kind must be visible before open action
  - deleted issue does not mean physical file purge in same phase
  - attachment metadata and file access policy must stay separable
