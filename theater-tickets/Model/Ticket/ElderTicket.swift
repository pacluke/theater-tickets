//
//  ElderTicket.swift
//  theater-tickets
//
//  Created by Lucas Flores on 28/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import Foundation

struct ElderTicket: TicketProtocol {
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
        case .Sunday, .Saturday, .Holiday:
            return 0.05
        case .Monday:
            return 0.10
        case .Tuesday:
            return 0.15
        case .Wednesday:
            return 0.40
        case .Thursday:
            return 0.30
        case .Friday:
            return 0.0
        }
    }
}
