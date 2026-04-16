# ============================================================
# BUSINESS AI WORKER DISCLAIMER CONSENT TEST DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines tests for disclaimer and consent.

test_targets:
- required disclaimer shown
- missing consent blocked
- accepted consent allows protected consultation
- expired consent blocked
- audit trace completeness
