# ============================================================
# STREAMING PLATFORM RUNTIME CANONICAL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero
root: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os
system: 06.streaming-os

purpose:
- StreamingOS 実装側の配置ルールを固定する
- Web / Android / iPhone の並行実装を前提にする
- backend / DB / script などの共通実装領域を固定する

runtime_platforms:
  web:
    stack:
      - HTML
      - CSS
      - JavaScript
    output_role:
      - Browser runtime
      - PC / Tablet / Smartphone browser support
  android:
    stack:
      - Java
      - XML
    output_role:
      - Android native app
      - Android Studio build target
  iphone:
    stack:
      - Swift
    output_role:
      - iPhone native app
      - Xcode build target

common_runtime_surfaces:
  - shared API contract
  - shared request / response model
  - shared validation basis
  - shared business rule basis
  - supabase edge functions
  - sql migrations
  - apply / verify scripts

required_directory_policy:
  - each app must have web
  - each app must have android
  - each app must have ios
  - each app must have shared
  - each app must have supabase/functions
  - each app must have sql
  - each app must have scripts

important_rules:
  - iPhone native implementation must not use Java
  - Android native implementation uses Java / XML as canonical
  - Web implementation uses HTML / CSS / JavaScript as canonical
  - payload canonical must be shared across platforms
  - persona display is required
  - background display is required
  - current persona / background must be user changeable
  - multilingual support is required
  - multi-currency support is required
  - iPhone / Android / PC / Tablet support is required
  - do not hardcode Japanese in Java; use strings.xml
  - do not hardcode user-facing strings in Swift; use Localizable.strings or equivalent key management

recommended_execution_order:
  - shared payload contract
  - shared model / validation
  - web implementation
  - android implementation
  - iphone implementation
  - integration test
