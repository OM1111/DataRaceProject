//
//  Flight.swift
//  DataRaceProject
//
//  Created by iOS Cat on 25/05/24.
//

import Foundation

actor Flight {
    
    var company = "Vistara"
    var availableSeats:[String] = ["1A","1B","1C"]
    
//    let dispatchBarrier = DispatchQueue(label: "dispatchBarrier",attributes: .concurrent)
//
//    /*
//     Here set flag barrier
//     */
//
//    func getAvailableSeats() -> [String] {
//        dispatchBarrier.sync(flags: .barrier) {
//            return availableSeats
//        }
//    }
//
//    func bookSeats() -> String {
//        dispatchBarrier.sync(flags: .barrier) {
//            let bookSeat = availableSeats.first ?? ""
//            availableSeats.removeFirst()
//            return bookSeat
//        }
//
//    }
    
        func getAvailableSeats() -> [String] {
            return availableSeats
        }
    
        func bookSeats() -> String {
            let bookSeat = availableSeats.first ?? ""
            availableSeats.removeFirst()
            return bookSeat
        }
    
    
    
}
