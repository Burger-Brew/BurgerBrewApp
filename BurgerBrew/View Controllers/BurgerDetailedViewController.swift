//
//  BurgerDetailedViewController.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-20.
//

import UIKit
import CoreData

class BurgerDetailedViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [CartList]()

    @IBOutlet weak var burgerTitle: UILabel!
    @IBOutlet weak var burgerImage: UIImageView!
    @IBOutlet weak var burgerPrice: UILabel!
    @IBOutlet weak var burgerDescription: UILabel!
    @IBOutlet weak var qtyValue: UIStepper!
    
    var burger: Burger!
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let burgerView = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        burgerView.selectedPassedIndex = 0
        self.present(burgerView, animated: true)
        
    }
    private func populateView() {
        burgerImage.image = burger.image
        burgerTitle.text = burger.title
        burgerPrice.text = burger.price
        burgerDescription.text = burger.description
    }

    @IBOutlet weak var qtyAmount: UILabel!
    
    @IBAction func qtyValueChange(_ sender: Any) {
        qtyAmount.text = String(qtyValue.value)
    }
    
    
    @IBAction func addToCart(_ sender: Any) {
        addToCart()
    }
    
    func addToCart(){
        let newItem = CartList(context: context)
        
        newItem.itemName = burger.title
        newItem.qty = Double(qtyValue.value)
        newItem.price = Double(burger.price)!
        newItem.subTotal = newItem.price * newItem.qty
        
        do {
            try self.context.save()
        }catch {
            
        }
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    
 
}
