import SwiftUI

struct GeneralDoctor: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("imran")
                    .resizable()
                    .background(.white)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 68, height: 68)
                VStack(alignment: .leading){
                    Text("Dr. Imran Syahir")
                        .font(.custom("Poppins", size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.bottom, 2)
                    Text("General Doctor")
                        .font(.custom("Poppins", size: 16))
                        .fontWeight(.regular)
                        .foregroundStyle(.general)
                }
                Spacer()
                Image("arrow_right")
                    .resizable()
                    .frame(width: 11, height: 22)
            }
            Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(.whitesmoke)
            HStack(alignment: .center){
                Image("calendar")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.white)
                Text("Sunday, 12 June")
                    .font(.custom("Poppins", size: 13))
                    .fontWeight(.regular)
                
                    .fixedSize()
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("11:00 - 12:00 AM")
                    .font(.custom("Poppins", size: 13))
                    .fontWeight(.regular)
                
                    .fixedSize()
            }
            
        }
        .padding(20)
        .background(Color.primaryBlue)
        .cornerRadius(12)
        .padding(.bottom, 20)
    }
}

#Preview {
    GeneralDoctor()
}
