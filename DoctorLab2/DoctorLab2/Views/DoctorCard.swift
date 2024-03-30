import SwiftUI

struct DoctorCard: View {
    var name: String
    var speciality: String
    var distance: Float
    var rating: Float
    var openTime: String
    var reviewsNumber: Int
    var image: String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(image)
                    .resizable()
                    .background(.white)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 68, height: 68)
                VStack(alignment: .leading){
                    Text(name)
                        .font(.custom("Poppins", size: 17))
                        .fontWeight(.bold)
                        .foregroundStyle(.header)
                        .padding(.bottom, 2)
                    Text(speciality)
                        .font(.custom("Poppins", size: 15))
                        .fontWeight(.regular)
                        .foregroundStyle(.neutral)
                }
                Spacer()
                Image("location")
                    .resizable()
                    .frame(width: 15, height: 15)
                Text(String(format: "%.1f KM", distance))
                    .font(.custom("Poppins", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(.neutral)
            }
            Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(.whitesmoke)
            HStack(alignment: .center){
                Image("clock")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.orange)
                Text("\(String(format: "%.1f", rating)) (\(reviewsNumber) Reviews)")
                    .font(.custom("Poppins", size: 13))
                    .fontWeight(.regular)
                    .foregroundColor(.orange)
                    .fixedSize()
                Spacer()
                Image("clock")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.primaryBlue)
                Text("Open at \(openTime)")
                    .font(.custom("Poppins", size: 13))
                    .fontWeight(.regular)
                    .foregroundColor(.primaryBlue)
                    .fixedSize()
            }
            
        }
        .padding(14)
        .padding(.bottom, 20)
    }
}
