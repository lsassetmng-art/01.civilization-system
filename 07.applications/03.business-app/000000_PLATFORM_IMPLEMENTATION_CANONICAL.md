# ============================================================
# PLATFORM IMPLEMENTATION CANONICAL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero
category: 03.business-app

purpose:
- 対象カテゴリ配下アプリに対して、共通実装責務と端末別責務を固定する

platform_policy:
  web:
    stack:
      - HTML
      - CSS
      - JavaScript
    role:
      - PC/Tabletブラウザ対応
      - iPhone/Androidブラウザ対応
      - 共通UI仕様の先行実装母体
  android:
    stack:
      - Java
      - XML
    role:
      - Androidネイティブアプリ
      - 端末機能連携
      - ストア配布前提実装
  iphone:
    stack:
      - Swift
    role:
      - iPhoneネイティブアプリ
      - Apple端末最適化
      - App Store配布前提実装

common_canonical_surfaces:
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

important_rules:
  - iPhoneネイティブ実装に Java は使わない
  - Androidネイティブ実装は Java / XML を正とする
  - Web実装は HTML / CSS / JavaScript を正とする
  - 画面差分があっても payload 正本は共通
  - 文言は Java/Swift に直書きせず key 管理を行う
  - 実装差分より先に API exact payload を固定する
  - persona表示 / 背景表示 / ユーザー変更可 は共通必須
  - 多言語 / 多通貨 / iPhone / Android / PC / Tablet 対応を前提とする

recommended_execution_order:
  - 共通API正本固定
  - Web画面先行実装
  - Androidネイティブ実装
  - iPhoneネイティブ実装
  - 統合試験
