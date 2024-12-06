//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Lucas Matheus Guimarães on 05/12/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        ScrollView {
            MapView(coordinate:  landmark.locateCoordinates).frame(height: 300)
            
            CircleImage(image: landmark
                .image).offset(y: -160)
                .padding(.bottom, -160)
            
            VStack(alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
