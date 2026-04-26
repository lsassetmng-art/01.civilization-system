# AICompanyManager Company / Department Action Pilot Canon

phase: Phase CD-CE
status: company-department-action-pilot-canon
real_api_connect: false

## 1. pilot対象

company:
- createCompany
- saveCompany
- deleteCompany
- saveCompanyRules

department:
- createDepartment
- saveDepartment
- deleteDepartment

## 2. 今回の扱い

pilotは動作確認用。

accepted UI の既存handleActionを置き換えない。

## 3. 次Phaseでの接続候補

次Phaseでは、以下から1つずつ置換する。

優先順:
1. company create
2. company save
3. department create
4. department save
5. department delete

## 4. rollback

問題があれば index.html を前Phase bundle に戻すだけでよい。

DB/API接続はないため、データ破壊リスクは localStorage 範囲のみ。
