# ============================================================
# SUPPORT AND MONITORING OPERATIONS
# ============================================================

status: draft

support_rules:
  - AIチャットのみ
  - FAQ、設定案内、再接続案内、操作説明を対象
  - 医療助言は対象外

monitoring_rules:
  - provider sync failure を監視
  - export failure を監視
  - family sharing change を監査対象とする
