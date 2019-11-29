//
//  TicketProtocol.swift
//  theater-tickets
//
//  Created by Lucas Flores on 28/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import Foundation

protocol TicketProtocol {
    func mondayDiscount() -> Float
    func tuesdayDiscount() -> Float
    func wednesdayDiscount() -> Float
    func thursdayDiscount() -> Float
    func fridayDiscount() -> Float
    func saturdayDiscount() -> Float
    func sundayDiscount() -> Float
    func holidayDiscount() -> Float
}
