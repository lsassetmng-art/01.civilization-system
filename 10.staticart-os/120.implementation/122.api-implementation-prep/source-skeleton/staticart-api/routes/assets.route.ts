import type {
  AssetCreateRequestDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
  RightsPolicyWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { requireString, requireVersionToken } from "../validators/request-validators";
import { AssetService } from "../services/asset-service";

export class AssetsRoute {
  constructor(private readonly assetService: AssetService) {}

  async createAsset(meta: RequestMeta, body: AssetCreateRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireString(body.asset_type, "asset_type");
    requireString(body.creator_id, "creator_id");
    requireString(body.initial_language_code, "initial_language_code");

    const data = await this.assetService.createDraft(body, meta);
    return success(meta.requestId, data);
  }

  async getAssetDetail(meta: RequestMeta, assetId: Uuid) {
    const data = await this.assetService.getAssetDetail(assetId);
    return success(meta.requestId, data);
  }

  async putLocalization(
    meta: RequestMeta,
    assetId: Uuid,
    languageCode: string,
    body: LocalizationWriteRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);
    requireString(languageCode, "language_code");

    const data = await this.assetService.upsertLocalization(assetId, languageCode, body, meta);
    return success(meta.requestId, data);
  }

  async putRightsPolicy(meta: RequestMeta, assetId: Uuid, body: RightsPolicyWriteRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateRightsPolicy(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async putSalesOffer(meta: RequestMeta, assetId: Uuid, body: SalesOfferWriteRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateSalesOffer(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async putSubscriptionRule(
    meta: RequestMeta,
    assetId: Uuid,
    body: SubscriptionRuleWriteRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.updateSubscriptionRule(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async runSelfCheck(meta: RequestMeta, assetId: Uuid, versionToken: string) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(versionToken);

    const data = await this.assetService.runSelfCheck(assetId, versionToken, meta);
    return success(meta.requestId, data);
  }

  async publishMarketplace(
    meta: RequestMeta,
    assetId: Uuid,
    body: PublishActionRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.publishMarketplace(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async publishLibraryOnly(
    meta: RequestMeta,
    assetId: Uuid,
    body: PublishActionRequestDto,
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.publishLibraryOnly(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async delist(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.delist(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async restrict(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["review_admin", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.restrict(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async archive(meta: RequestMeta, assetId: Uuid, body: StateActionRequestDto) {
    requireActor(meta, ["creator_owner", "publisher_operator", "policy_admin"]);
    requireVersionToken(body.version_token);

    const data = await this.assetService.archive(assetId, body, meta);
    return success(meta.requestId, data);
  }
}
