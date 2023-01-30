//
//  Example.swift
//  ListTraining
//
//  Created by Юрий  Лизунов on 29/01/23.
//

import SwiftUI

struct DateList: View {
    var body: some View {
        List {
            ForEach(1...getNumberOfDaysInCurrentMonth(), id: \.self) { day in
                Text("\(day)")
            }
        }
    }
    
    func getNumberOfDaysInCurrentMonth() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        DateList()
    }
}
