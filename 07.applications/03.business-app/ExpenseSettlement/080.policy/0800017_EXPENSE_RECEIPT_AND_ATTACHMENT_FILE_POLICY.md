# ============================================================
# EXPENSE RECEIPT AND ATTACHMENT FILE POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines receipt and attachment file policy for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- file handling policy must remain separate from evidence business meaning
- accepted file type does not automatically mean accepted evidence
- file policy must support applicant usability and finance reviewability
- file policy meaning must remain stable across iphone, android, pc, and tablet
- multilingual UI may vary, but file acceptance semantics remain canonical

file_policy_design_goal:
- define what files can be attached
- define what file failures mean
- support evidence matrix and OCR-ready boundary
- avoid ambiguous handling of invalid/unreadable/unsupported files

accepted_file_family_candidates:
- image/jpeg
- image/png
- application/pdf

future_extension_candidates:
- heic_if_policy_allows
- other_image_or_document_families_if_governed_later

file_condition_types:
- accepted_file_family
- invalid_type
- oversized
- corrupt_unreadable
- attached_but_business_unusable

important_rule:
- invalid_type is a file-policy condition
- unreadable may be file-level or evidence-level depending on context
- business unusable evidence is not always the same as technically unreadable file

baseline_file_rules:
- file must have accepted family
- file must be uploadable and storable through approved path
- file metadata should remain traceable
- file acceptance does not waive evidence review

multiple_attachment_rules:
- multiple attachments may be allowed per item where evidence policy says so
- file count limits should be centrally defined
- count limit should not be confused with evidence sufficiency

size_rules:
- file size policy should be centrally governed
- oversized must be distinguishable from invalid_type
- size failure should produce actionable user feedback

preview_rules:
- user should be able to confirm what was attached
- approver/finance should be able to review allowed files within authority scope
- preview convenience must not change evidence truth

ocr_ready_rules:
- accepted file family should align with OCR-ready intake where policy supports it
- OCR processing request/result is separate from file acceptance
- OCR failure does not automatically mean file invalid_type

security_rules:
- file access must follow least privilege
- file references and integrity metadata should remain traceable
- attachment content should not leak through unauthorized notification/export paths

history_rules:
- upload, replacement, rejection, and replacement-after-review must remain traceable
- replacing a file must not silently erase prior file trace
- file history is part of evidence trace support

not_allowed:
- treating any uploaded file as automatically accepted evidence
- silently changing file-policy acceptance after the fact with no trace
- allowing device-specific accepted file semantics
- merging invalid_type and business mismatch into one vague error only

open_policy_variables_to_fix_later:
- exact max file size
- exact max file count per item/report
- exact HEIC support decision
- exact PDF constraints
- exact preview policy by role/scope

design_consequence:
This policy keeps attachment handling safe by separating:
- file acceptance from evidence acceptance
- invalid_type from unreadable business content
- upload support from review truth
- OCR readiness from canonical evidence status

