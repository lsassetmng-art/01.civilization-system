# TALENT GROWTH OLD FOLDER REMOVAL NOTE

status: cleanup-complete
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
旧フォルダ TalentGrowthEvaluation の削除記録を残すための note である。

# 1. removal target
- /data/data/com.termux/files/home/01.civilization-system/07.applications/TalentGrowthEvaluation

# 2. removal reason
- TalentGrowth と TalentGrowthEvaluation が重複して見えていた
- duplicate-check の結果、
  - only_in_TalentGrowthEvaluation.txt は 0件
  - diff_size_only.txt は 0件
- 旧フォルダ固有ファイルおよびサイズ差分ファイルが確認されなかった

# 3. conclusion
TalentGrowthEvaluation は旧重複フォルダとして削除し、
TalentGrowth を正式正本フォルダとして一本化した。
