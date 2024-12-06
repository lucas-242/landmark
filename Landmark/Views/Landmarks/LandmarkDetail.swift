//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Lucas Matheus Guimarães on 05/12/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate:  landmark.locateCoordinates).frame(height: 300)
            
            CircleImage(image: landmark
                .image).offset(y: -160)
                .padding(.bottom, -160)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
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
    let modelData = ModelData()
    LandmarkDetail(landmark: modelData.landmarks[0]).environment(modelData)
}
