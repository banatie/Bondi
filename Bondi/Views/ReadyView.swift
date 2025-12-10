import SwiftUI

struct ReadyView: View {
    @ObservedObject var viewModel: MeasurementViewModel
    
    var body: some View {
        VStack {
            Text("Ready to start the game?")
                .font(.title)

            Button(action: {
                viewModel.appState = .measuring
            }) {
                Text("Start")
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(maxWidth: 300)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }
            .padding()
        }
    }
}

#Preview {
    ReadyView(viewModel: MeasurementViewModel())
}
