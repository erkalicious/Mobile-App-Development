//
//  AddAppointment.swift
//  TheBooks
//
//  Created by Eric Ferreira on 3/18/17.
//  Copyright © 2017 Eric Ferreira. All rights reserved.
//

import UIKit

class AddAppointment: UIViewController {
	@IBAction func close() {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func done() {
		//TODO: Create the appointment
		
		close()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let clients = segue.destination as? Clients {
			print("clients")
			
			clients.onDone = {
				print("done")
			}
		}
	}
}
