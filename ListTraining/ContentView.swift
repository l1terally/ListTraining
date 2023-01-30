//
//  ContentView.swift
//  ListTraining
//
//  Created by Юрий  Лизунов on 29/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Section{
            Text("TODAY")
                .font(.largeTitle)
                .fontWeight(.bold)
                ForEach(tasksList, id: \.id) { lTasks in
                    LongCard(lTasks: lTasks)
                }
            }.listRowSeparator(.hidden)
            Section{
            Text("TOMORROW")
                .font(.largeTitle)
                .fontWeight(.bold)
                ForEach(tasksList, id: \.id) { lTasks in
                    LongCard(lTasks: lTasks)
                }
            }.listRowSeparator(.hidden)
        }.listStyle(.inset)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


