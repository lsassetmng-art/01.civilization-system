# ============================================================
# ProductPortfolioManager PLATFORM SPLIT IMPLEMENTATION POLICY
# ============================================================

status: canonical
app: ProductPortfolioManager
category: 03.business-app

shared_canonical:
- API exact request payload
- API exact response payload
- DB logical design
- DB migration design
- screen state flow
- validation rule
- business rule
- strings key design
- permission / privacy rule
- sync / retry / offline rule

web_implementation:
- HTML
- CSS
- JavaScript

android_implementation:
- Java
- XML

iphone_implementation:
- Swift

mandatory_common_requirements:
- persona表示
- 背景表示
- 表示中のpersona/backgroundはユーザー変更可能
- 多言語対応
- 多通貨対応
- iPhone対応
- Android対応
- PC対応
- Tablet対応

notes:
- Web / Android / iPhone で UI 実装は分かれてよい
- payload と業務仕様は共通正本に従う
- iPhoneネイティブに Java は使用しない
- Androidは Java / XML を正とする
- Webは HTML / CSS / JavaScript を正とする
