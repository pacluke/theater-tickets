//
//  ConfirmedStudentTicket.swift
//  theater-tickets
//
//  Created by Lucas Flores on 28/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import Foundation

struct ConfirmedStudentTicket: TicketProtocol {
    var price: Float
    var priceWithDiscount: Float!
    var client: Client
    var weekday: Weekday
    
    init(price: Float, weekday: Weekday) {
        self.price = price
        self.weekday = weekday
        self.client = .Elder
        self.priceWithDiscount = price - (getDiscount(weekday: weekday) * price)
    }
    
    func getDiscount(weekday: Weekday) -> Float {
        switch weekday {
        case .Sunday, .Saturday, .Friday:
            return 0.0
        case .Monday, .Tuesday, .Wednesday, .Thursday, .Holiday:
            return 0.35
        }
    }
}
