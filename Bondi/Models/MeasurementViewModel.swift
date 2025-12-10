import Foundation

class MeasurementViewModel: ObservableObject {
    @Published var appState: AppState = .initial
}

enum AppState {
    case initial
    case readyToMeasure
    case measuring
}
