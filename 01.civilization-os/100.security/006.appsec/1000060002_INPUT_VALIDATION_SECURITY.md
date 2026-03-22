# INPUT VALIDATION SECURITY

status: canonical
layer: security
domain: appsec

## RULES
- all external input must be validated
- parsing failure must fail closed
- schema mismatch must be rejected
