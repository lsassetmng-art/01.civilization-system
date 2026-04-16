# ============================================================
# BUSINESS LEGAL SUPPORT LIFE SCHEMA BOUNDARY POLICY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

schema_boundary:
  primary_schema:
    - life

rules:
  - 本アプリの正本データは life に置く
  - BusinessOS へ渡す場合も life 側の元データは維持する
  - ERP へ直接保存する前提は持たない
  - company-wide formal control data は本アプリの schema scope 外

not_allowed_assumptions:
  - life schema data equals enterprise legal truth
  - advisor share equals ownership transfer
  - app export equals official corporate archive
