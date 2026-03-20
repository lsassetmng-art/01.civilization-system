# ============================================================
# POCKET SECRETARY SECURITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: security-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the security architecture
of PocketSecretary.


# SECURITY PRINCIPLES

Local-first data model

Manual ERP submission only

No autonomous financial operations


# SECURITY DOMAINS

1 Device Security
2 Network Security
3 ERP Integration Security
4 Persona Asset Security


# DEVICE SECURITY

User personal data is stored locally.

Storage systems:

Room Database
Local file storage


Sensitive data:

ERP tokens
Authentication keys

must be stored in

Android Keystore.


# NETWORK SECURITY

All external communication must use HTTPS.

Certificate validation is required.


# ERP REQUEST SECURITY

ERP requests must contain:

company_code
user_identifier
request_payload
request_timestamp


ERP requests must be manually initiated.


# PROHIBITED OPERATIONS

PocketSecretary must never perform:

automatic ERP submission
automatic ERP approval
financial transaction execution
