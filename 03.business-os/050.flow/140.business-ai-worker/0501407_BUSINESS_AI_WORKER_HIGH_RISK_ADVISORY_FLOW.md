# ============================================================
# BUSINESS AI WORKER HIGH RISK ADVISORY FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines high-risk consultation flow with disclaimer and consent.

targets:
- medical
- legal
- high-risk management advice

flow:
1. consultation type is identified as high risk
2. disclaimer text and version are retrieved from foundation web
3. disclaimer is shown
4. explicit consent is required
5. only after consent may active consultation begin
6. session keeps disclaimer version and consent reference
