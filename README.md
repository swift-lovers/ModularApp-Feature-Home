# ModularApp-Feature-Home

Feature Home module following Clean Architecture principles.

## Structure

| Layer | Directory | Responsibility |
|-------|-----------|----------------|
| **API** | `ModularApp-Feature-Home-Api/` | Public interface exposed to other modules |
| **Domain** | `ModularApp-Feature-Home-Domain/` | Models, Use Cases, Repository protocols |
| **Data** | `ModularApp-Feature-Home-Data/` | Repository implementations, networking |
| **Presentation** | `ModularApp-Feature-Home-Presentation/` | Views, ViewModels (SwiftUI) |

## Architecture

```
Presentation → Domain ← Data
     │            │         │
 HomeView    HomeItem   HomeRepository
 HomeViewModel  GetHomeItemsUseCase
                HomeRepositoryProtocol
```

- **Domain** is the core layer with no external dependencies.
- **Data** implements domain repository protocols.
- **Presentation** depends on domain models and use cases.
- **API** exposes the module entry point to the rest of the app.
