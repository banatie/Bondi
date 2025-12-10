import SwiftUI

struct InitialView: View {
    @ObservedObject var viewModel: MeasurementViewModel
    
    var body: some View {
        VStack {
            Text("Is your phone mounted in the car?")
                .font(.title)

            Button(action: {
                viewModel.appState = .readyToMeasure
            }) {
                Text("Yes")
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
    InitialView(viewModel: MeasurementViewModel())
}
