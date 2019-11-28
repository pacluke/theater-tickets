//
//  Ticket.swift
//  theater-tickets
//
//  Created by Lucas Flores on 27/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import Foundation

struct Ticket {
    private var price: Float
    private var client: Client
    private var weekday: Weekday
    
    init(price: Float, client: Client, weekday: Weekday) {
        self.price = price
        self.client = client
        self.weekday = weekday
    }
    
    private func getClient() -> Client {
        return self.client
    }
    
    private func getWeekday() -> Weekday {
        return self.weekday
    }
    
}
