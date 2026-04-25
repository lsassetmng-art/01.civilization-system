import type {
  AssetCreateRequestDto,
  AssetSummaryDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  ReviewDecisionRequestDto,
  RightsPolicyWriteRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { AssetRepository } from "../services/asset-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_ASSET_SQL } from "./sql/staticart-asset-sql";
import { notFound } from "./helpers/repository-errors";

export class AssetRepositoryImpl implements AssetRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async createDraft(
    input: AssetCreateRequestDto,
    meta: RequestMeta,
  ): Promise<AssetSummaryDto> {
    const db = this.dbFactory.createPersonaDbClient();

    return db.transaction(async (tx) => {
      const assetId = crypto.randomUUID();
      const assetCode = `STA-${Date.now()}`;
      const versionLabel = "v1";

      const assetResult = await tx.query<{
        asset_id: string;
        asset_code: string;
        asset_type: string;
        creator_id: string;
        publisher_id: string | null;
        current_version_no: number;
        lifecycle_state: string;
        created_at: string;
      }>(STATICART_ASSET_SQL.insertAssetMaster, [
        assetId,
        assetCode,
        input.asset_type,
        input.creator_id,
        input.publisher_id ?? null,
      ]);

      await tx.query(STATICART_ASSET_SQL.insertAssetVersion, [
        assetId,
        versionLabel,
        meta.actorUserId ?? input.creator_id,
      ]);

      const row = assetResult.rows[0];
      return {
        asset_id: row.asset_id,
        asset_code: row.asset_code,
        asset_type: row.asset_type as AssetSummaryDto["asset_type"],
        creator_id: row.creator_id,
        publisher_id: row.publisher_id,
        current_version_no: row.current_version_no,
        lifecycle_state: row.lifecycle_state as AssetSummaryDto["lifecycle_state"],
        version_token: `${row.created_at}#1`,
        created_at: row.created_at,
      };
    });
  }

  async getDetail(assetId: Uuid): Promise<Record<string, unknown> | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.selectAssetDetail, [assetId]);
    return result.rows[0] ?? null;
  }

  async upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();

    const detail = await this.getDetail(assetId);
    if (!detail) {
      notFound("Asset not found for localization write.", { assetId });
    }

    const versionNo = Number(detail.current_version_no ?? 1);

    const result = await db.query(STATICART_ASSET_SQL.upsertLocalization, [
      assetId,
      versionNo,
      languageCode,
      input.title,
      input.subtitle ?? null,
      input.short_description ?? null,
      input.long_description ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertRightsPolicy, [
      assetId,
      input.version_no,
      input.exhibition_allowed,
      input.commercial_use_allowed,
      input.derivative_allowed,
      input.additional_license_required,
      input.age_rating,
      input.region_mode,
      input.region_codes,
      input.rights_summary ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertSalesOffer, [
      assetId,
      input.sale_type,
      input.sales_state,
      input.base_currency ?? null,
      input.base_price ?? null,
      input.price_label_override ?? null,
      input.sale_start_at ?? null,
      input.sale_end_at ?? null,
      input.limited_sale_flag ?? false,
      input.inventory_cap ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ASSET_SQL.upsertSubscriptionRule, [
      assetId,
      input.subscription_state,
      input.subscription_eligible,
      input.creator_opt_in,
      input.settlement_group_code ?? null,
      input.subscription_start_at ?? null,
      input.subscription_end_at ?? null,
    ]);

    return result.rows[0] ?? {};
  }

  async runSelfCheck(
    assetId: Uuid,
    versionToken: string,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    void versionToken;

    const detail = await this.getDetail(assetId);
    if (!detail) {
      notFound("Asset not found for self check.", { assetId });
    }

    return {
      asset_id: assetId,
      self_check_passed: false,
      issues: [
        "Phase 2 placeholder: bind file/metadata/rights/sales/subscription completeness logic.",
      ],
    };
  }

  async createReviewRequest(
    _assetId: Uuid,
    _requestedReviewTypes: string[],
    _versionToken: string,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual review request persistence in Phase 3.",
    };
  }

  async decideReview(
    _reviewRequestId: Uuid,
    _input: ReviewDecisionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual review decision persistence in Phase 3.",
    };
  }

  async publishMarketplace(
    _assetId: Uuid,
    _input: PublishActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual marketplace publish in Phase 3.",
    };
  }

  async publishLibraryOnly(
    _assetId: Uuid,
    _input: PublishActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual library-only publish in Phase 3.",
    };
  }

  async delist(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual delist in Phase 3.",
    };
  }

  async restrict(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual restrict in Phase 3.",
    };
  }

  async archive(
    _assetId: Uuid,
    _input: StateActionRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return {
      todo: "Bind actual archive in Phase 3.",
    };
  }
}
