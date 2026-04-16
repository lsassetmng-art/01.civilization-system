# ============================================================
# POCKET SECRETARY PERMISSION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: permission-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Android permission usage.


# REQUIRED PERMISSIONS

INTERNET

POST_NOTIFICATIONS


# OPTIONAL PERMISSIONS

READ_EXTERNAL_STORAGE

WRITE_EXTERNAL_STORAGE

CAMERA (business card OCR)


# PERMISSION PRINCIPLES

Permissions must follow:

minimal access
feature-based request
runtime permission request


Permissions must never be requested
before the related feature is used.


# STORAGE POLICY

Local files stored in

app private storage.

External storage is optional.
