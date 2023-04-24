//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Max Franz Immelmann on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
