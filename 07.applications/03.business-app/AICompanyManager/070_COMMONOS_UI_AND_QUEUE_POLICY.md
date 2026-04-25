# ============================================================
# AICompanyManager COMMONOS UI AND QUEUE POLICY
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: commonos-policy-initialized

## 1. Purpose

本書は AICompanyManager における CommonOS 利用方針を定義する。

## 2. CommonOS Usage

AICompanyManager は CommonOS の shared UI foundation を優先利用する。

対象:
- shell
- navigation
- dashboard layout
- list
- detail
- form
- search
- status chip
- review board presentation
- delivery board presentation
- queue presentation
- retry presentation
- conflict presentation
- offline indicator

## 3. OS-Side Consumer Folder

実装時、AICompanyManager 側には CommonOS consumer 受け口を作る。

想定パス:
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/adapter
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/bridge
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/mapper
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/presenter
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/theme
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/sync
- ~/03.civilization-development/03.business-os/AICompanyManager/_commonos/test

## 4. Offline-First Policy

AICompanyManager は offline-first + local queue + online sync を前提とする。

ローカル queue 対象候補:
- 方針下書き保存
- 方針送信
- レビューコメント
- 差し戻し指示
- 人間承認
- 納品受領
- revision request

## 5. Queue Meaning

CommonOS は queue の見た目を提供する。
AICompanyManager は queue の業務意味を持つ。

例:
- policy_submit_pending
- review_comment_pending
- approval_pending_sync
- delivery_acceptance_pending
- revision_request_pending

## 6. UI Variants

AICompanyManager は business-app であるため、以下 variant を想定する。

- standard business dashboard
- dense review board
- delivery approval panel
- role pipeline timeline
- audit log table

## 7. Canonical Rule

CommonOS は UI と presentation を提供する。
AICompanyManager の事業状態、承認意味、納品意味は AICompanyManager 側が持つ。
