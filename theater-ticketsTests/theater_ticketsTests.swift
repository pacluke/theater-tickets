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
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice! - (kidTicketPrice! * 0.10)))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.10)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.10)))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.35)))
        
    }
    
    func testTuesdayTickets() {
        let currentDay: Weekday = .Tuesday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice! - (kidTicketPrice! * 0.15)))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.15)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.05)))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.35)))
        
    }
    
    func testWednesdayTickets() {
        let currentDay: Weekday = .Wednesday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice! - (kidTicketPrice! * 0.30)))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.40)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.50)))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.35)))
        
    }
    
    func testThursdayTickets() {
        let currentDay: Weekday = .Thursday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice!))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.30)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.30)))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice! - (studentTicketPrice! * 0.35)))
        
    }
    
    func testFridayTickets() {
        let currentDay: Weekday = .Friday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice! - (kidTicketPrice! * 0.11)))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice!))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        
    }
    
    func testSaturdayTickets() {
        let currentDay: Weekday = .Saturday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice!))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.05)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        
    }
    
    func testSundayTickets() {
        let currentDay: Weekday = .Sunday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice!))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.05)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        
    }
    
    func testHolidayTickets() {
        let currentDay: Weekday = .Holiday
        
        let kidTicket: Ticket = Ticket(price: kidTicketPrice!, client: .Kid, weekday: currentDay)
        let elderTicket: Ticket = Ticket(price: elderTicketPrice!, client: .Elder, weekday: currentDay)
        let studentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .Student, weekday: currentDay)
        let confirmedStudentTicket: Ticket = Ticket(price: studentTicketPrice!, client: .ConfirmedStudent, weekday: currentDay)
        
        XCTAssertTrue(kidTicket.getPriceWithDiscount() == (kidTicketPrice!))
        XCTAssertTrue(elderTicket.getPriceWithDiscount() == (elderTicketPrice! - (elderTicketPrice! * 0.05)))
        XCTAssertTrue(studentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        XCTAssertTrue(confirmedStudentTicket.getPriceWithDiscount() == (studentTicketPrice!))
        
    }
    
    

}
