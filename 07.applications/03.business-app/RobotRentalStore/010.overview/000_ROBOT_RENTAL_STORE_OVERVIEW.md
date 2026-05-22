# RobotRentalStore OVERVIEW

## 1. 目的
RobotRentalStore は、BusinessOSのユーザー向けロボットレンタル画面である。

ユーザーは以下を行える。
- ロボット一覧を見る
- シリーズで絞る
- ロールで絞る
- 料金/レンタル単位を見る
- ロボット詳細を見る
- レンタル条件を選ぶ
- 見積を確認する
- レンタル申込へ進む

## 2. AICompanyManagerとの関係
AICompanyManagerは対象外。

AICompanyManager:
- 会社内にロボットを配置する管理アプリ

RobotRentalStore:
- ユーザーがロボットを探してレンタル/契約する入口

## 3. WorkerRentalCoreとの関係
RobotRentalStore は、WorkerRentalCore / business側レンタル正本に接続する画面である。

ただし、今回のfoundationではDB書込しない。
画面とpayloadを固定し、次フェーズでAPI/DB接続する。

## 4. CommonOS
将来的に以下はCommonOS部品へ寄せる。
- list/card
- filter
- detail panel
- plan selector
- confirmation summary
- offline queue presentation
- sync status display

業務正本、価格、契約、利用権、決済、RLSはBusinessOS側に残す。
