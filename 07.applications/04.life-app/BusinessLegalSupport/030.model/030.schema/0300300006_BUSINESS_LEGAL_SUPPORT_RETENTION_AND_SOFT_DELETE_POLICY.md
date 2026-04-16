# ============================================================
# BUSINESS LEGAL SUPPORT RETENTION AND SOFT DELETE POLICY
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

retention_policy:
  - 軽量相談記録であっても即物理削除は前提にしない
  - 基本は deleted_at による論理削除
  - archive と delete は意味を分ける

archive_rule:
  - archived_at は UI 上の現役一覧から外すための状態
  - deleted_at は論理削除であり通常表示から除外する

delete_rule:
  - 物理削除設計は今段階では固定しない
  - 子テーブルの削除も論理削除優先
  - share record は revocation と deleted_at を分けて扱う
