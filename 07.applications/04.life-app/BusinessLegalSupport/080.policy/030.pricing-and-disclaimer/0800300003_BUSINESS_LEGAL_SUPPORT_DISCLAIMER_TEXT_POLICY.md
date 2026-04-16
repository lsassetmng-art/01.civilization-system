# ============================================================
# BUSINESS LEGAL SUPPORT DISCLAIMER TEXT POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 080.policy
subfolder: 030.pricing-and-disclaimer
owner: Boss
prepared_by: Zero

required_disclaimer_text_policy:
  always_visible_in_key_surfaces:
    - 本アプリは法的助言の代替ではありません
    - 最終判断は本人または有資格専門家が行ってください

required_surfaces:
  - consultation_prep
  - summary_output
  - advisor_share_view
  - AI support surface

prohibited_impressions:
  - lawyer replacement
  - formal legal opinion generation
  - enterprise legal truth confirmation
