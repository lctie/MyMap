//
//  LocationListView.swift
//  MyMap
//
//  Created by James Allen on 21/12/2024.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location)
                } label: {
                    listRowView(location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
                    
            }
        }
        .listStyle(PlainListStyle())
    }
}

extension LocationListView {
    private func listRowView(_ location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    LocationListView()
        .environmentObject(LocationViewModel())
}
