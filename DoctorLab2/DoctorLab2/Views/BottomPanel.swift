import SwiftUI

struct BottomPanel: View {
    var body: some View {
        HStack(spacing: 14){
            HStack(spacing: 10){
                Image("home")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 28, height: 28)
                Text("Home")
                    .foregroundStyle(.accent)
                
            }
            .padding(12)
            .background(.accentTransparent)
            .cornerRadius(12)
            Spacer()
            Image("calendar")
                .resizable()
                .scaledToFit()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(.neutral)
            Spacer()
            Image("message")
                .resizable()
                .scaledToFit()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 28, height: 28)
            Spacer()
            Image("profile")
                .resizable()
                .scaledToFit()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 28, height: 28)
            Spacer()
        }.frame(
            maxWidth: .infinity,alignment: .center)
        .padding(12)
        .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(.whitesmoke), alignment: .top)
    }
}

#Preview {
    BottomPanel()
}
