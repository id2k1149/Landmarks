//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Max Franz Immelmann on 4/22/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView  {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        /*
        ForEach(
            ["iPhone SE (3rd generation)",
             "iPhone 14 Pro"],
            id: \.self) { deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
        }
         */
    }
}
