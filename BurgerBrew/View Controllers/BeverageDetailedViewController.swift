//
//  BeverageDetailedViewController.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-21.
//

import UIKit

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
        let beverageView = storyboard.instantiateViewController(withIdentifier:"BeverageTabView") as! BeverageViewController
        self.present(beverageView, animated: true)
    }
    
    private func populateView() {
        beverageImage.image = beverage.image
        beveragePrice.text = beverage.price
        beverageName.text = beverage.title
        beverageDescription.text = beverage.description
    }
    

    
    
    
    @IBAction func btnPlaceOrder(_ sender: Any) {
        addToCart()
    }
    
    
   
    func addToCart(){
        let newItem = CartList(context: context)
        
        newItem.itemName = beverageName.text
        newItem.qty = Double(qtyValue.value)
        newItem.price = Double(beveragePrice.text!)!
        newItem.subTotal = Double(beveragePrice.text!)! * newItem.qty
        
        do {
            try context.save()
        }catch {
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        // Do any additional setup after loading the view.
    }

}
