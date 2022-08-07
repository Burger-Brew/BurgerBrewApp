//
//  TabBarController.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-07.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    // set in Home_ViewController on click of collection item
    var selectedPassedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        print("Index is : \(selectedPassedIndex)")
        self.selectedIndex = selectedPassedIndex
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
