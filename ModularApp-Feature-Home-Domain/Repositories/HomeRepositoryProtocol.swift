import Foundation

public protocol HomeRepositoryProtocol {
    func fetchHomeItems() async throws -> [HomeItem]
}
