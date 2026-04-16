# ============================================================
# RECORDING AND SYNC RUNTIME
# ============================================================

status: draft

recording_runtime:
  - 手入力を受け付ける
  - validation を行う
  - raw/normalized を保存する
  - dashboard を更新する

sync_runtime:
  - provider から取得する
  - duplicate 判定する
  - sync log を残す
  - 失敗時は owner に見える形で通知する
