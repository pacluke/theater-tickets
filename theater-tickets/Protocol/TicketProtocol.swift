//
//  TicketProtocol.swift
//  theater-tickets
//
//  Created by Lucas Flores on 28/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import Foundation

protocol TicketProtocol {
    
    var price: Float { get }
    var priceWithDiscount: Float! { get }
    var client: Client { get }
    var weekday: Weekday { get }
    
    func getDiscount(weekday: Weekday) -> Float

}
