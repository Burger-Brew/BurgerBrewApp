//
//  BeverageDetailedViewController.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-21.
//

import UIKit
import CoreData

class BeverageDetailedViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [CartList]()

    @IBOutlet weak var beverageName: UILabel!
    @IBOutlet weak var beverageImage: UIImageView!
    @IBOutlet weak var beveragePrice: UILabel!
    @IBOutlet weak var beverageDescription: UILabel!
    
    @IBOutlet weak var qtyValue: UIStepper!
    
    var beverage: Beverage!
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let beverageView = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        beverageView.selectedPassedIndex = 2
        self.present(beverageView, animated: true)
    }
    
    private func populateView() {
        beverageImage.image = beverage.image
        beveragePrice.text = beverage.price
        beverageName.text = beverage.title
        beverageDescription.text = beverage.description
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
        
        newItem.itemName = beverage.title
        newItem.qty = Double(qtyValue.value)
        newItem.price = Double(beverage.price)!
        newItem.subTotal = newItem.price * newItem.qty
        
        do {
            try self.context.save()
        }catch {
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        // Do any additional setup after loading the view.
    }
    

    


}
