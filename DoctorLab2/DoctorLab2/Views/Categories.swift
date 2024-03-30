import SwiftUI

struct Categories: View {
    var body: some View {
        HStack(spacing: 10){
            VStack{
                Circle()
                    .fill(.buttonBg)
                    .overlay(Image("sun").resizable().frame(width: 24, height: 24))
                Text("Covid-19")
                    .font(.custom("Poppins", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
                
            }
            VStack{
                Circle()
                    .fill(.buttonBg)
                    .overlay(Image("profile-add").resizable().frame(width: 24, height: 24))
                Text("Doctor")
                    .font(.custom("Poppins", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
            }
            VStack{
                Circle()
                    .fill(.buttonBg)
                    .overlay(Image("link").resizable().frame(width: 24, height: 24))
                Text("Medicine")
                    .font(.custom("Poppins", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
            }
            VStack{
                Circle()
                    .fill(.buttonBg)
                    .overlay(Image("hospital").resizable().frame(width: 24, height: 24))
                Text("Hospital")
                    .font(.custom("Poppins", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
            }
        }
        .padding(.top, 20)
        .padding(.bottom, 20)
    }
}

#Preview {
    Categories()
}
