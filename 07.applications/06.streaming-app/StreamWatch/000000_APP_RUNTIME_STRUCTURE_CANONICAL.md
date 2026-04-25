# ============================================================
# StreamWatch APP RUNTIME STRUCTURE CANONICAL
# ============================================================

status: canonical
app: StreamWatch
runtime_root: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch

platform_directories:
  web:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/web
    stack:
      - HTML
      - CSS
      - JavaScript
  android:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/android
    stack:
      - Java
      - XML
  ios:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/ios
    stack:
      - Swift

shared_directories:
  shared:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/shared
    purpose:
      - shared request model
      - shared response model
      - shared validation basis
      - shared constants
  supabase_functions:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/supabase/functions
    purpose:
      - backend edge functions
  sql:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/sql
    purpose:
      - migrations
      - seed
      - verify sql
  scripts:
    path: /data/data/com.termux/files/home/03.civilization-development/06.streaming-os/StreamWatch/scripts
    purpose:
      - apply scripts
      - verify scripts
      - helper scripts

mandatory_common_requirements:
  - persona display
  - background display
  - persona/background user-changeable
  - multilingual support
  - multi-currency support
  - iPhone support
  - Android support
  - PC support
  - Tablet support

implementation_rules:
  - Web / Android / iPhone UI implementations may differ
  - payload and business rules must stay common
  - iPhone native implementation must not use Java
  - Android native implementation uses Java / XML
  - Web implementation uses HTML / CSS / JavaScript
  - do not hardcode Japanese in Java
  - do not hardcode user-facing strings in Swift
