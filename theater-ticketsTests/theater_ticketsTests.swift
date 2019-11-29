//
//  theater_ticketsTests.swift
//  theater-ticketsTests
//
//  Created by Lucas Flores on 27/11/19.
//  Copyright © 2019 lsflores. All rights reserved.
//

import XCTest
@testable import theater_tickets

class theater_ticketsTests: XCTestCase {
    
    var kidTicketPrice: Float?
    var elderTicketPrice: Float?
    var studentTicketPrice: Float?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        kidTicketPrice = 5.50
        elderTicketPrice = 6.00
        studentTicketPrice = 8.00
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        kidTicketPrice = nil
        elderTicketPrice = nil
        studentTicketPrice = nil
    }
    
    func testMondayTickets() {
        let currentDay: Weekday = .Monday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 4.95)
        XCTAssertTrue(elderTicket.priceWithDiscount == 5.40)
        XCTAssertTrue(studentTicket.priceWithDiscount == 7.20)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 5.20)
    }
    
    func testTuesdayTickets() {
        let currentDay: Weekday = .Tuesday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 4.675)
        XCTAssertTrue(elderTicket.priceWithDiscount == 5.10)
        XCTAssertTrue(studentTicket.priceWithDiscount == 7.60)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 5.20)
    }
    
    func testWednesdayTickets() {
        let currentDay: Weekday = .Wednesday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 3.85)
        XCTAssertTrue(elderTicket.priceWithDiscount == 3.60)
        XCTAssertTrue(studentTicket.priceWithDiscount == 4.00)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 5.20)
    }
    
    func testThursdayTickets() {
        let currentDay: Weekday = .Thursday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 5.50)
        XCTAssertTrue(elderTicket.priceWithDiscount == 4.20)
        XCTAssertTrue(studentTicket.priceWithDiscount == 5.60)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 5.20)
    }
    
    func testFridayTickets() {
        let currentDay: Weekday = .Friday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 4.895)
        XCTAssertTrue(elderTicket.priceWithDiscount == 6.00)
        XCTAssertTrue(studentTicket.priceWithDiscount == 8.00)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 8.00)
    }
    
    func testSaturdayTickets() {
        let currentDay: Weekday = .Saturday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 5.50)
        XCTAssertTrue(elderTicket.priceWithDiscount == 5.70)
        XCTAssertTrue(studentTicket.priceWithDiscount == 8.00)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 8.00)
    }
    
    func testSundayTickets() {
        let currentDay: Weekday = .Sunday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 5.50)
        XCTAssertTrue(elderTicket.priceWithDiscount == 5.70)
        XCTAssertTrue(studentTicket.priceWithDiscount == 8.00)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 8.00)
    }
    
    func testHolidayTickets() {
        let currentDay: Weekday = .Holiday
        
        let kidTicket: KidTicket = KidTicket(price: kidTicketPrice!, weekday: currentDay)
        let elderTicket: ElderTicket = ElderTicket(price: elderTicketPrice!, weekday: currentDay)
        let studentTicket: StudentTicket = StudentTicket(price: studentTicketPrice!, weekday: currentDay)
        let confirmedStudentTicket: ConfirmedStudentTicket = ConfirmedStudentTicket(price: studentTicketPrice!, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.priceWithDiscount == 5.50)
        XCTAssertTrue(elderTicket.priceWithDiscount == 5.70)
        XCTAssertTrue(studentTicket.priceWithDiscount == 8.00)
        XCTAssertTrue(confirmedStudentTicket.priceWithDiscount == 8.00)
    }
    
    

}
