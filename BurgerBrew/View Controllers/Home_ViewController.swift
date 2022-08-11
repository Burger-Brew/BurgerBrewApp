//
//  Home_ViewController.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-05.
//

import UIKit

class Home_ViewController: UIViewController {

    //Declare outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var labelMessage_Top: NSLayoutConstraint!
    @IBOutlet weak var imgBurger: UIImageView!
    @IBOutlet weak var imgDessert: UIImageView!
    @IBOutlet weak var imgBeverage: UIImageView!
    @IBOutlet var gestureBurger: UITapGestureRecognizer!
    @IBOutlet var gestureBeverage: UITapGestureRecognizer!
    @IBOutlet var gestureDessert: UITapGestureRecognizer!
    
    
    //Declare variables
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideWelcomeMessage()
        showWelcomeMessage()
    }

    private func showWelcomeMessage(){
        UIView.animate(withDuration: 1){ [weak self] in
            self?.labelMessage_Top.constant = 300
            self?.view.layoutIfNeeded()
        }
    }
    
    private func hideWelcomeMessage(){
        labelMessage_Top.constant = -(labelMessage.frame.origin.y) - labelMessage.frame.height
        print(imgBurger.frame)
        //print(labelMessage_Top.constant)
    }
    
    @IBAction func tapBurger(_ sender: UITapGestureRecognizer) {
        print("This is Burger page")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let tabBarController = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        // pass the index to identify and change titles accordingly
        tabBarController.selectedPassedIndex = 0
        self.present(tabBarController, animated: true)
    }
    
    @IBAction func tapDessert(_ sender: UIGestureRecognizer) {
        print("This is Dessert page")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let tabBarController = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        // pass the index to identify and change titles accordingly
        tabBarController.selectedPassedIndex = 1
        self.present(tabBarController, animated: true)
    }
    
    @IBAction func tapBeverage(_ sender: UIGestureRecognizer) {
        print("This is Beverage page")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let tabBarController = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        // pass the index to identify and change titles accordingly
        tabBarController.selectedPassedIndex = 2
        self.present(tabBarController, animated: true)
    }
    

}
