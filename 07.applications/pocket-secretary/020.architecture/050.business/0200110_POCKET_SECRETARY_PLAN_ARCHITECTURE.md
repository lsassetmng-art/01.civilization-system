# ============================================================
# POCKET SECRETARY PLAN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary plan-based feature architecture.

plans:
- free
- pro
- enterprise

plan architecture rules:
- free provides non-AI core secretary tools only
- AI secretary capability begins from Pro
- enterprise extends Pro with company-secretary and business support capabilities
- plan-gated functions must be enforced structurally,
  not only hidden cosmetically in UI

plan structure:
free:
- dashboard
- schedule calendar
- todo
- memo
- library
- calculator
- basic notification
- mailer launch
- no AI secretary capability

pro:
- all free features
- AI secretary capability
- personal consultation
- yahoo transit launch
- travel expense management
- monthly aggregation
- advanced notification

enterprise:
- all pro features
- company secretary capability
- business card management integration
- ERP application draft
- explicit application button for ERP-facing submission
- quotation draft
- order draft
- document summary in library
- enterprise consultation including work problem-solving proposals
