-- ============================================================
-- KNOWLEDGE-DOMAIN-BRAIN-1 DOMAIN SEED DRAFT
-- NOT EXECUTED
-- DB_WRITE=NO
-- DDL_APPLY=NO
-- ============================================================

insert into cx22073jw.knowledge_domain_catalog (
  domain_code,
  domain_group_code,
  display_name_ja,
  display_name_en,
  domain_summary,
  default_reference_depth_code,
  max_reference_depth_code,
  requires_human_review_default,
  regulated_or_sensitive_default,
  safety_boundary_summary,
  sort_order
)
values
  (
    'artist',
    'creative',
    'アーティスト',
    'Artist',
    'イラスト、音楽、映像表現、色彩、構図、作風、商用アート注意を扱う創作参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    '既存作家・既存IPの直接模倣、肖像・声・歌詞流用には注意する。',
    10
  ),
  (
    'architecture',
    'built_environment',
    '建築・空間設計',
    'Architecture',
    '建築デザイン、空間設計、動線、内装、景観、材料、構造注意、法規/安全注意を扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    true,
    true,
    '実施工、構造安全、法規適合、防火避難、最終建築判断は人間専門家レビュー必須。',
    20
  ),
  (
    'it_technology',
    'technology',
    'IT技術',
    'IT Technology',
    'ソフトウェア設計、API、DB、UI、セキュリティ、テスト、運用、開発ガードレールを扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    false,
    true,
    '実行・DB変更・API POST・push等はAIWorkerOS/各プロジェクトのガードレールに従う。',
    30
  ),
  (
    'manga_comic',
    'creative',
    '漫画・コミック',
    'Manga / Comic',
    '漫画企画、キャラクター、コマ割り、ネーム、台詞、演出、背景、連載構成を扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    '既存漫画家、既存キャラクター、既存作品設定への直接模倣・類似に注意する。',
    40
  ),
  (
    'video_creator',
    'creative',
    '動画クリエイター',
    'Video Creator',
    '動画企画、台本、絵コンテ、撮影、編集、サムネイル、BGM/SE、配信/ショート動画を扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    '素材権利、BGM/SE権利、肖像・声、プラットフォーム規約に注意する。',
    50
  ),
  (
    'writing_story',
    'creative',
    '文章・物語',
    'Writing / Story',
    '小説、脚本、世界観、キャラクター、会話、構成、コピーライティングを扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    '既存作品の直接複製、長文引用、固有設定の流用に注意する。',
    60
  ),
  (
    'game_design',
    'creative_technology',
    'ゲームデザイン',
    'Game Design',
    'ゲーム企画、レベルデザイン、バランス、キャラクター、UI、報酬設計、世界観を扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    'ガチャ、課金、年齢制限、既存IP類似、危険表現に注意する。',
    70
  ),
  (
    'business_marketing',
    'business',
    'ビジネス・マーケティング',
    'Business / Marketing',
    '商品企画、広告、LP、SNS、ブランド、販売導線、顧客分析、価格設計支援を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    false,
    true,
    '金融・法務・医療・規制領域の最終判断には専門レビューが必要。',
    80
  ),
  (
    'legal_rights_safety',
    'governance',
    '権利・法務・安全注意',
    'Legal / Rights / Safety',
    '著作権、商標、肖像、声、契約、商用利用、表現リスク、人間レビュー要否を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    true,
    true,
    '法的最終判断ではなく注意・分類・レビュー誘導に限定する。',
    90
  ),
  (
    'education_training',
    'education',
    '教育・研修',
    'Education / Training',
    '教材、カリキュラム、問題作成、解説、習熟度、研修設計を扱う参照ドメイン。',
    'lightweight_reference',
    'verified_cx_canon',
    false,
    false,
    '高 stakes 試験・資格・専門教育では内容確認が必要。',
    100
  ),
  (
    'science_engineering',
    'science_engineering',
    '科学・工学',
    'Science / Engineering',
    '科学知識、工学、製造、材料、機械、ロボット、実験安全注意を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    true,
    true,
    '危険実験、兵器、危害、化学・電気・機械安全に関わる内容は安全境界を適用する。',
    110
  ),
  (
    'healthcare_wellness',
    'health',
    '健康・ウェルネス',
    'Healthcare / Wellness',
    '健康一般情報、生活改善、注意喚起、医療判断禁止、専門家相談誘導を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    true,
    true,
    '診断・治療・投薬判断は行わず、必要時は専門家相談へ誘導する。',
    120
  ),
  (
    'finance_accounting',
    'business',
    '会計・財務',
    'Finance / Accounting',
    '会計、財務、原価、予算、経営分析、帳票・レポートを扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    true,
    true,
    '投資、税務、法務、規制金融判断は専門レビューが必要。',
    130
  ),
  (
    'hr_operation',
    'business',
    '人事・業務運用',
    'HR / Operation',
    '採用、人事、評価、業務手順、チーム運用、研修を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    false,
    true,
    '雇用、労務、個人情報、差別・評価に関わる判断はレビューが必要。',
    140
  ),
  (
    'culture_history_reference',
    'reference',
    '文化・歴史参照',
    'Culture / History Reference',
    '歴史、文化、地理、神話、民俗、作品設定補助、業務/創作参照を扱う参照ドメイン。',
    'source_backed',
    'verified_cx_canon',
    false,
    false,
    '史実・文化解釈は出典・注意点・検証状態を明示する。',
    150
  )
on conflict (domain_code) do update set
  domain_group_code = excluded.domain_group_code,
  display_name_ja = excluded.display_name_ja,
  display_name_en = excluded.display_name_en,
  domain_summary = excluded.domain_summary,
  default_reference_depth_code = excluded.default_reference_depth_code,
  max_reference_depth_code = excluded.max_reference_depth_code,
  requires_human_review_default = excluded.requires_human_review_default,
  regulated_or_sensitive_default = excluded.regulated_or_sensitive_default,
  safety_boundary_summary = excluded.safety_boundary_summary,
  sort_order = excluded.sort_order,
  updated_at = now();

-- Cross-domain relation seed draft

insert into cx22073jw.knowledge_domain_relation (
  from_domain_code,
  to_domain_code,
  relation_code,
  relation_summary,
  usage_note,
  sort_order
)
values
  ('architecture', 'artist', 'presentation_support', '建築デザインの外観・パース・雰囲気表現をartistドメインで補助する。', '建築成立性はarchitecture主、見せ方はartist補助。', 10),
  ('architecture', 'science_engineering', 'structure_and_material_support', '建築の構造注意・材料・環境設計でscience_engineeringを参照する。', '構造安全の最終判断は人間専門家レビュー必須。', 20),
  ('architecture', 'legal_rights_safety', 'code_safety_caution', '建築法規・安全注意・レビュー要否でlegal_rights_safetyを参照する。', '法規適合の最終判断は人間専門家レビュー必須。', 30),
  ('manga_comic', 'artist', 'visual_expression_support', '漫画のキャラクター・背景・演出でartistドメインを参照する。', '既存作家・既存作品への直接模倣は禁止。', 40),
  ('manga_comic', 'writing_story', 'story_structure_support', '漫画のネーム・台詞・構成でwriting_storyを参照する。', '作品構成の補助として使う。', 50),
  ('manga_comic', 'legal_rights_safety', 'similarity_caution', '既存漫画・キャラクター類似注意でlegal_rights_safetyを参照する。', '権利リスク注意を成果物に付与する。', 60),
  ('video_creator', 'artist', 'visual_direction_support', '動画の画面設計・サムネイル・色調でartistを参照する。', 'SNS/動画表現の見せ方補助。', 70),
  ('video_creator', 'writing_story', 'script_support', '動画台本・構成でwriting_storyを参照する。', '短尺/長尺の構成を分ける。', 80),
  ('video_creator', 'business_marketing', 'platform_marketing_support', '動画の訴求・SNS展開・販売導線でbusiness_marketingを参照する。', '商用目的の場合に活用。', 90),
  ('video_creator', 'legal_rights_safety', 'material_rights_caution', '素材・BGM・肖像・声の権利注意でlegal_rights_safetyを参照する。', '権利リスク注意を成果物に付与する。', 100),
  ('it_technology', 'legal_rights_safety', 'security_and_compliance_caution', 'セキュリティ・規約・危険操作注意でlegal_rights_safetyを参照する。', '実装ガードレールはAIWorkerOS側で最終制御する。', 110),
  ('game_design', 'artist', 'game_visual_support', 'ゲームUI・キャラクター・世界観ビジュアルでartistを参照する。', 'ゲーム用素材設計補助。', 120),
  ('game_design', 'writing_story', 'scenario_support', 'クエスト・世界観・台詞でwriting_storyを参照する。', 'ゲームシナリオ補助。', 130),
  ('game_design', 'it_technology', 'implementation_support', 'ゲーム実装・UI・システム設計でit_technologyを参照する。', '実装は別途テスト・安全確認が必要。', 140),
  ('business_marketing', 'writing_story', 'copywriting_support', '広告文・LP・SNSコピーでwriting_storyを参照する。', '商用表現の品質向上。', 150),
  ('business_marketing', 'legal_rights_safety', 'commercial_risk_caution', '広告・販売・表現リスクでlegal_rights_safetyを参照する。', '景表法・商標・規制領域はレビューが必要。', 160),
  ('culture_history_reference', 'artist', 'creative_reference_support', '文化・歴史を作品表現・美術設定に利用する。', '史実の誤用や文化的注意点を明示する。', 170),
  ('culture_history_reference', 'writing_story', 'worldbuilding_support', '歴史・文化を世界観・物語構築に利用する。', '出典・検証状態・創作改変の区別を明示する。', 180)
on conflict (from_domain_code, to_domain_code, relation_code) do update set
  relation_summary = excluded.relation_summary,
  usage_note = excluded.usage_note,
  sort_order = excluded.sort_order;
