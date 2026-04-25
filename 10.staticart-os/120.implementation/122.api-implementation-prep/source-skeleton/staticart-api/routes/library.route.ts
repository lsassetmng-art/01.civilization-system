import type {
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success, successList } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { requireProgressPercent } from "../validators/request-validators";
import { LibraryService } from "../services/library-service";

export class LibraryRoute {
  constructor(private readonly libraryService: LibraryService) {}

  async getLibrary(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    requireActor(meta, ["signed_in_user", "library_user", "creator_owner", "publisher_operator", "review_admin", "policy_admin", "support_readonly"]);
    const result = await this.libraryService.getLibrary(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async getContinueReading(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    const result = await this.libraryService.getContinueReading(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async getContinueViewing(meta: RequestMeta, actorUserId: Uuid, cursor?: string | null, limit?: number) {
    const result = await this.libraryService.getContinueViewing(actorUserId, cursor, limit);
    return successList(meta.requestId, result.items, result.nextCursor);
  }

  async saveReaderProgress(
    meta: RequestMeta,
    assetId: Uuid,
    body: ReaderProgressRequestDto,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    requireProgressPercent(body.progress_percent);
    const data = await this.libraryService.saveReaderProgress(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async saveViewerProgress(
    meta: RequestMeta,
    assetId: Uuid,
    body: ViewerProgressRequestDto,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.saveViewerProgress(assetId, body, meta);
    return success(meta.requestId, data);
  }

  async addFavorite(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.addFavorite(assetId, meta);
    return success(meta.requestId, data);
  }

  async deleteFavorite(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.deleteFavorite(assetId, meta);
    return success(meta.requestId, data);
  }

  async createAnnotation(
    meta: RequestMeta,
    assetId: Uuid,
    body: Record<string, unknown>,
  ) {
    requireActor(meta, ["signed_in_user", "library_user"]);
    const data = await this.libraryService.createAnnotation(assetId, body, meta);
    return success(meta.requestId, data);
  }
}
