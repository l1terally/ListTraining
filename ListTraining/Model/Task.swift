//
//  Task.swift
//  ListTraining
//
//  Created by Юрий  Лизунов on 29/01/23.
//

import SwiftUI

struct Tasks: Identifiable{
    var id = UUID()
    var name: String
    var timeFrom: Date
    var timeTo: Date
}
