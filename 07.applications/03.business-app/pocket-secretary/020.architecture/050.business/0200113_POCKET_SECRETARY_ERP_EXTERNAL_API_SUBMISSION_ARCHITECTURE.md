# ============================================================
# POCKET SECRETARY ERP EXTERNAL API SUBMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Business Submission Common.

common reference:
BusinessOS submission common defines:
- external API submission only
- explicit submission only
- auto-submission prohibition
- auth context requirement
- business draft alignment
- formal-document-aligned draft principle

PocketSecretary-specific application:
- PocketSecretary acts as a draft-and-submit client
- PocketSecretary binds shared submission rules
  to Enterprise-only submission-capable surfaces
- PocketSecretary keeps app-specific review surfaces
  before explicit submission

rules:
- PocketSecretary does not write directly to ERP databases
- PocketSecretary uses ERP external API only
- local draft, API send, and ERP acceptance remain distinct
