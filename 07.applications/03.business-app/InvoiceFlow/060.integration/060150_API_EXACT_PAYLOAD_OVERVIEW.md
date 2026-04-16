# ============================================================
# API EXACT PAYLOAD OVERVIEW
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines exact request and response payload principles for InvoiceFlow.

api_principles:
- every request carries company scope
- every response carries success boolean
- every response carries canonical status summary where applicable
- every failure returns machine-readable error codes
- currency_code is mandatory on monetary payloads
- language_code is mandatory on document-output related payloads where applicable
- ERP authority boundary must be visible in payloads
- FRONT_LOCAL and ERP_MASTER must never be conflated in payloads

standard_response_shape:
- success
- error_code
- error_message
- data

standard_error_codes:
- VALIDATION_ERROR
- UNAUTHORIZED
- FORBIDDEN
- NOT_FOUND
- CONFLICT
- ERP_REFLECTION_NOT_ALLOWED
- PAYMENT_CONFIRMATION_NOT_ALLOWED
- RECEIPT_ISSUANCE_NOT_ALLOWED
- BANK_MATCH_AMBIGUOUS
- INTERNAL_ERROR
