# ============================================================
# POCKET SECRETARY API ERROR MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: api-error-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines API error categories.


# ERROR CATEGORIES

CLIENT_ERROR

NETWORK_ERROR

SERVER_ERROR

ERP_REJECTION


# ERROR STRUCTURE

error_code
error_message
timestamp


# CLIENT_ERROR

Invalid request payload.


# NETWORK_ERROR

Connectivity failure
timeout
DNS failure.


# SERVER_ERROR

Unexpected server response.


# ERP_REJECTION

ERP approval rejected
by ERP system.


# ERROR HANDLING PRINCIPLE

User must be notified
for ERP related failures.
