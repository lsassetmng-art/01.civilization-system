# ============================================================
# POCKETSECRETARY PLATFORM SUPPORT ARCHITECTURE
# IPHONE / ANDROID 対応
# ============================================================

status: draft-additive
prepared_by: Zero
owner: Boss
scope: pocketsecretary / platform support architecture

note:
- additive only
- 既存設計を壊さず追補として追加
- PocketSecretary は iPhone / Android の両対応を前提とする

# ============================================================
# 1. 基本方針
# ============================================================

PocketSecretary は、
iPhone および Android の両方に対応する前提で設計する。

片系OS専用アプリとして閉じず、
モバイル秘書アプリとして
クロスプラットフォーム利用を可能にする。

# ============================================================
# 2. 対応対象
# ============================================================

supported_mobile_platforms:
- iphone
- android

meaning:
- iPhone 利用者も利用可能
- Android 利用者も利用可能
- どちらか片方のみを正本対象にしない

# ============================================================
# 3. 設計原則
# ============================================================

platform_design_principles:
- 共通意味は共通化する
- 画面意味と機能意味は OS 依存で分断しない
- 端末差異は platform adapter / UI差分で吸収する
- 秘書体験の本質は iPhone / Android で揃える
- Deep Link / 通知 / 背景 / 秘書切替 / 相談機能は両対応前提で整理する

# ============================================================
# 4. 共通で扱うべき要素
# ============================================================

cross_platform_common_scope:
- home meaning
- secretary interaction meaning
- consultation meaning
- summary priority meaning
- wording meaning
- notification semantics
- background switching semantics
- persona / secretary switching semantics
- business app launch semantics
- auth inheritance semantics
- company secretary scope semantics

# ============================================================
# 5. OS差分として吸収する要素
# ============================================================

platform_specific_absorption_scope:
- native navigation details
- permission request flow
- push notification implementation detail
- app-to-app launch implementation detail
- OS-specific settings entry behavior
- UI component implementation detail
- store / distribution route detail

# ============================================================
# 6. Deep Link / 外部起動の扱い
# ============================================================

PocketSecretary における
EstimateCreator / NameCardManager 等の外部起動設計は、
iPhone / Android 両対応前提で整理する。

meaning:
- 起動契約そのものは共通意味として持つ
- 実際のOSごとの差分は adapter で吸収する
- install guidance も両OS対応前提で設計する

# ============================================================
# 7. 通知の扱い
# ============================================================

通知機能は、
iPhone / Android 両方で提供する前提とする。

meaning:
- 通知意味は共通
- quiet hours 等の制御意味も共通
- OS別 permission / delivery detail は実装差分として吸収する

# ============================================================
# 8. 結論
# ============================================================

PocketSecretary は
Android 対応だけで閉じず、
iPhone / Android 両対応のモバイル秘書アプリとして扱う。

したがって、
今後の設計・実装整理においては
「Androidのみ前提」の記述ではなく、
「iPhone / Android 両対応前提」で統一する。

