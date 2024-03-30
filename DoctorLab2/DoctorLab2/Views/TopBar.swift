import SwiftUI

struct TopBar: View {
    var name: String
    var body: some View {
        HStack{
            VStack (alignment: .leading){
                Text("Hello,")
                    .font(.custom("Poppins", size: 18))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
                Text(name)
                    .font(.custom("Poppins", size: 22))
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            Image("avatar")
                .resizable()
                .frame(width: 46, height: 46)
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 20)
    }
}

#Preview {
    TopBar(name: "James")
}
