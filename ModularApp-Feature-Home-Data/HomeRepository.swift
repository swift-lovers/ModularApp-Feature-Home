import Foundation

public final class HomeRepository: HomeRepositoryProtocol {
    public init() {}
    
    public func fetchHomeItems() async throws -> [HomeItem] {
        // Simulated network delay
        try await Task.sleep(nanoseconds: 500_000_000)
        return [
            HomeItem(id: "1", title: "Welcome", subtitle: "Get started with ModularApp"),
            HomeItem(id: "2", title: "Explore", subtitle: "Discover features"),
            HomeItem(id: "3", title: "Settings", subtitle: "Configure your experience")
        ]
    }
}
