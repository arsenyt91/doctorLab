import SwiftUI

struct ContentView: View {
    @State var search: String = ""
    var doctors = [
        DoctorCard(name: "Dr. Joseph Brostito", speciality: "Dental Specialist", distance: 1.2, rating: 4.8, openTime: "17:00", reviewsNumber: 120, image: "joseph"),
        DoctorCard(name: "Dr. Imran Syahir", speciality: "General Doctor", distance: 1.2, rating: 4.8, openTime: "17:00", reviewsNumber: 120, image: "imran")
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            TopBar(name: "James")
            ScrollView{
                
                VStack(alignment: .leading){
                    
                    GeneralDoctor()
                    
                    HStack {
                        Image("magnifier")
                        TextField("", text: $search, prompt: Text("Search doctor or health issue").foregroundColor(.neutral))
                            .foregroundColor(.neutral)
                            .font(.custom("Poppins", size: 16))
                    }
                    .padding(20)
                    .background(.buttonBg)
                    .cornerRadius(12)
                    
                    Categories()
                    
                    Text("Near Doctor")
                        .font(.custom("Poppins", size: 18))
                        .fontWeight(.bold)
                        .foregroundStyle(.header)
                        .padding(.bottom, 16)
                    
                    ForEach(0 ..< doctors.count, id: \.self) { value in
                        doctors[value]
                    }
                }
                .padding(.bottom, 12)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
                
            }
            BottomPanel()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .padding(.top, 20)
        .background(.white)
        
    }
}

#Preview {
    ContentView()
}
