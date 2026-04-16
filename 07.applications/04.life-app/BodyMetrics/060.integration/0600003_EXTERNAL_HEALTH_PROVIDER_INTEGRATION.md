# ============================================================
# EXTERNAL HEALTH PROVIDER INTEGRATION
# ============================================================

status: draft

ios:
  - Apple Health / HealthKit を主要窓口とする
android:
  - Health Connect を主要窓口とする

provider_rules:
  - provider 固有値は normalization を通す
  - duplicate import を抑止する
  - token / permission 失効時は再接続導線を持つ
  - manual operation は sync failure でも継続可能とする
