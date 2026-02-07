import Foundation

public protocol GetHomeItemsUseCaseProtocol {
    func execute() async throws -> [HomeItem]
}

public final class GetHomeItemsUseCase: GetHomeItemsUseCaseProtocol {
    private let repository: HomeRepositoryProtocol
    
    public init(repository: HomeRepositoryProtocol) {
        self.repository = repository
    }
    
    public func execute() async throws -> [HomeItem] {
        try await repository.fetchHomeItems()
    }
}
