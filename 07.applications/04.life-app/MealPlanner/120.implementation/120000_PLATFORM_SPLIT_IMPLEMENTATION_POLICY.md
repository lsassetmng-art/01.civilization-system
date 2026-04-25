# ============================================================
# MealPlanner PLATFORM SPLIT IMPLEMENTATION POLICY
# ============================================================

status: canonical
app: MealPlanner

shared_canonical:
- API exact request payload
- API exact response payload
- DB logical design
- business rule
- validation rule
- strings key
- persona/background display rule

web_implementation:
- HTML
- CSS
- JavaScript

android_implementation:
- Java
- XML

iphone_implementation:
- Swift

notes:
- Web/Android/iPhone で UI 実装は分かれてよい
- ただし payload と業務仕様は共通正本に従う
- iPhoneネイティブに Java は使用しない
- Androidは Java/XML を正とする
- persona表示 / 背景表示 / 変更可能要件を必須とする
