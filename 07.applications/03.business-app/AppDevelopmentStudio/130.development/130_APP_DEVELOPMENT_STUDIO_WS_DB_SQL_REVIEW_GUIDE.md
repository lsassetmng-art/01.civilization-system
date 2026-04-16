# ============================================================
# APP DEVELOPMENT STUDIO WS-DB SQL REVIEW GUIDE
# ============================================================

status: canonical-draft
layer: development
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero
review_required: Sato(DB)

purpose:
Provides the review guide before DB execution.

review_points:
- DDL matches frozen physical schema design
- table names match exact design
- column names match exact design
- index names and purposes are clear
- no silent schema meaning change exists
- repository targets remain consistent with DDL
- governed linkage remains queryable

review_rule:
No DB execution should begin until Sato DB review is complete.
