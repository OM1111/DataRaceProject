//
//  ViewController.swift
//  DataRaceProject
//
//  Created by iOS Cat on 25/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    let queue1 = DispatchQueue(label: "queue1")
    let queue2 = DispatchQueue(label: "queue2")
    
    let flight:Flight = Flight()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        queue1.async {
            Task {
                /*
                 if company property fetching form acotr class so need to make chnage to let or nonisolated keyword otherwise actor class understand that need to udpate in threading case on concurrent enviornemtn
                 */
            
               // let company = await self.flight.company
                
                let bookSeats = await self.flight.bookSeats()
                print("Book Seats are:- \(bookSeats)")
            }
        }
        
        queue2.async {
            
            Task {
                let availbleSeats = await self.flight.getAvailableSeats()
                print("Book Seats are:- \(availbleSeats)")
            }
        }
        
        
    }


}

