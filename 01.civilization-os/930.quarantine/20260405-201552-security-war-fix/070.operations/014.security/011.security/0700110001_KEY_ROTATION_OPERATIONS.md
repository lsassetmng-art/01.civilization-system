# KEY ROTATION OPERATIONS

status: canonical
layer: operations
domain: security

## PURPOSE
Define operational rotation of signing and encryption keys.

## PROCEDURE
- prepare new key
- validate compatibility
- rotate active key
- re-sign if necessary
- revoke old key
- write audit trail
