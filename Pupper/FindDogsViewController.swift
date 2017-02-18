//
//  FindDogsViewController.swift
//  Pupper
//
//  Created by Olivia on 2/18/17.
//  Copyright © 2017 Olivia. All rights reserved.
//

import UIKit
import Alamofire

class FindDogsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = "90071" // replace with location from preferences struct
        let breed = "labrador" // replace with breed from preferences struct
        let age = "baby" // replace with age from preferences struct
        
        let url = "https://api.petfinder.com/pet.find?key=f534d78deac933250456312a9ee37d22&location=\(location)&animal=dog&breed=\(breed)&age=\(age)&format=json"
        
        Alamofire.request("\(url)").responseJSON { response in
            print(response.result)   // hopefully success
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
        // Characteristics to check for matches: House/Apartment, Children, Dogs, Activity, Noise, 
        
        //
    }
}


