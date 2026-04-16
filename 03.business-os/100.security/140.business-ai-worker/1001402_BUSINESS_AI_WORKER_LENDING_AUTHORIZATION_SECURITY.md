# ============================================================
# BUSINESS AI WORKER LENDING AUTHORIZATION SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines authorization requirements for lending.

requirements:
- consumer surface must be allowed
- requested activity mode must be allowed
- requested world scope must be allowed
- requested specialty must be allowed by policy
- requested rank must be allowed by subscription and authority

rule:
Authorized use is narrower than authenticated use.
