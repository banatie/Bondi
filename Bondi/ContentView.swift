import SwiftUI

struct ContentView: View {
    @StateObject private var measurementViewModel = MeasurementViewModel()

    var body: some View {
        switch measurementViewModel.appState {
        case .initial:
            InitialView(viewModel: measurementViewModel)
        case .readyToMeasure:
            ReadyView(viewModel: measurementViewModel)
        case .measuring:
            MeasuringView(viewModel: measurementViewModel)
        }
    }
}

#Preview {
    ContentView()
}
