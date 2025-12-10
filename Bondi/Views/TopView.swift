import SwiftUI

struct TopView: View {
    var body: some View {
        VStack {
            Text("Is your phone mounted in the car?")
                .font(.title)

            Button(action: {
                // Change the measurement state
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
    TopView()
}
