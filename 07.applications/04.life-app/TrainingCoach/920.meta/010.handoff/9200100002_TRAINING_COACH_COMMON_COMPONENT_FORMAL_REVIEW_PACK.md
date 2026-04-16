# ============================================================
# TRAINING COACH COMMON COMPONENT FORMAL REVIEW PACK
# ============================================================

status: candidate-handoff
phase: design-consolidation
system: TrainingCoach
layer: 920.meta
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach から application common components へ持ち込む候補を
    正式審査しやすい形で束ねる

review_pack:

pack_1_wave_high:
  - component_name: Habit Tracking / Streak Common
    reason:
      - BodyMetrics / MealPlanner / LifePlanner 再利用性が高い
      - 継続表示のUI/計算/メッセージを共通化しやすい
  - component_name: Goal Progress / Achievement Rate Common
    reason:
      - 達成率と進捗可視化は健康系横断の基盤
  - component_name: Wellness Condition Input Common
    reason:
      - fatigue / body_condition の入力器は複数アプリで再利用可能
  - component_name: Guide Content Viewer Common
    reason:
      - text / image / video の手順表示器は横断価値が高い

pack_2_wave_mid:
  - component_name: Adaptive Difficulty Rule Common
    reason:
      - 体調連動の軽量調整ルールは運動・献立両方で応用余地がある
  - component_name: Device Sync Status Common
    reason:
      - 連携状態表示は複数健康アプリで共通
  - component_name: Safety Notice / Precaution Common
    reason:
      - 安全注意表示器と message code の再利用価値が高い

pack_3_keep_app_specific:
  - component_name: Training Plan Composition Logic
    reason:
      - 運動固有性が強く、現時点ではアプリ内保持が妥当
  - component_name: Session Completion Scoring
    reason:
      - 運動量算定ロジックは共通化前に運動固有調整が必要
  - component_name: Exercise Master Structure
    reason:
      - 汎用化候補ではあるが、初期はアプリ固有で持つ方が安全

formal_review_questions:
  - 他アプリで 2箇所以上使う見込みがあるか
  - UIだけでなく meaning / payload まで共通化可能か
  - 共通化により TrainingCoach の進行を遅らせないか
