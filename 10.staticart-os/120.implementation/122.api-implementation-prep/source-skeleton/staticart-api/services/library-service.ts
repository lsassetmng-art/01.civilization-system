import type {
  FavoriteResponseDto,
  ReaderProgressRequestDto,
  ViewerProgressRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface LibraryRepository {
  getLibrary(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  getContinueReading(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  getContinueViewing(actorUserId: Uuid, cursor?: string | null, limit?: number): Promise<{ items: Record<string, unknown>[]; nextCursor: string | null }>;
  saveReaderProgress(assetId: Uuid, input: ReaderProgressRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  saveViewerProgress(assetId: Uuid, input: ViewerProgressRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  addFavorite(assetId: Uuid, meta: RequestMeta): Promise<FavoriteResponseDto>;
  deleteFavorite(assetId: Uuid, meta: RequestMeta): Promise<FavoriteResponseDto>;
  createAnnotation(assetId: Uuid, input: Record<string, unknown>, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class LibraryService {
  constructor(private readonly repository: LibraryRepository) {}

  async getLibrary(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getLibrary(actorUserId, cursor, limit);
  }

  async getContinueReading(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getContinueReading(actorUserId, cursor, limit);
  }

  async getContinueViewing(actorUserId: Uuid, cursor?: string | null, limit?: number) {
    return this.repository.getContinueViewing(actorUserId, cursor, limit);
  }

  async saveReaderProgress(assetId: Uuid, input: ReaderProgressRequestDto, meta: RequestMeta) {
    return this.repository.saveReaderProgress(assetId, input, meta);
  }

  async saveViewerProgress(assetId: Uuid, input: ViewerProgressRequestDto, meta: RequestMeta) {
    return this.repository.saveViewerProgress(assetId, input, meta);
  }

  async addFavorite(assetId: Uuid, meta: RequestMeta) {
    return this.repository.addFavorite(assetId, meta);
  }

  async deleteFavorite(assetId: Uuid, meta: RequestMeta) {
    return this.repository.deleteFavorite(assetId, meta);
  }

  async createAnnotation(assetId: Uuid, input: Record<string, unknown>, meta: RequestMeta) {
    return this.repository.createAnnotation(assetId, input, meta);
  }
}
