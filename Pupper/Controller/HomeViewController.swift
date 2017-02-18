//
//  HomeViewController.swift
//  Pupper
//
//  Created by Miriam Hendler on 2/18/17.
//  Copyright © 2017 Olivia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var dogBreed: DogPreference?
    
    var homeType: homeType?
    
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var homeImageView: UIImageView!
    @IBAction func houseButtonPressed(_ sender: Any) {
        homeImageView.image = UIImage(named: "selected home")
        cityImageView.image = UIImage(named: "unselected city")
        
        houseButton.setImage(UIImage(named: "selected"), for: UIControlState.normal)
        cityButton.setImage(UIImage(named: "unselected"), for: UIControlState.normal)
        homeType = .house
    }
    
    @IBAction func cityButtonPressed(_ sender: Any) {
        homeImageView.image = UIImage(named: "unselected house")
        cityImageView.image = UIImage(named: "selected city")

        houseButton.setImage(UIImage(named: "unselected"), for: UIControlState.normal)
        cityButton.setImage(UIImage(named: "selected"), for: UIControlState.normal)
        homeType = .apartment
    }
    @IBOutlet weak var cityButton: UIButton!
    @IBOutlet weak var houseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dogBreed?.zipCode)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! FamilyViewController
        if let dogBreed = self.dogBreed {
            dogBreed.homeType = homeType!
            destination.dogBreed = dogBreed
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
