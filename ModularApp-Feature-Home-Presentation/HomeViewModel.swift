import Foundation

@MainActor
public final class HomeViewModel: ObservableObject {
    @Published public var items: [HomeItem] = []
    @Published public var isLoading = false
    @Published public var errorMessage: String?
    
    private let getHomeItemsUseCase: GetHomeItemsUseCaseProtocol
    
    public init(getHomeItemsUseCase: GetHomeItemsUseCaseProtocol) {
        self.getHomeItemsUseCase = getHomeItemsUseCase
    }
    
    public func loadItems() async {
        isLoading = true
        errorMessage = nil
        do {
            items = try await getHomeItemsUseCase.execute()
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}
