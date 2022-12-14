//
//  DessetDetailsViewController.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-21.
//

import UIKit
import CoreData

class DessetDetailsViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [CartList]()

    @IBOutlet weak var dessertName: UILabel!
    @IBOutlet weak var dessertImage: UIImageView!
    @IBOutlet weak var dessertPrice: UILabel!
    @IBOutlet weak var dessertDescription: UILabel!
    
    @IBOutlet weak var qtyValue: UIStepper!
    
    var dessert: Dessert!
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let dessertView = storyboard.instantiateViewController(withIdentifier:"tabBarController") as! TabBarController
        dessertView.selectedPassedIndex = 1
        self.present(dessertView, animated: true)
    }
    
    private func populateView() {
        dessertImage.image = dessert.image
        dessertPrice.text = dessert.price
        dessertName.text = dessert.title
        dessertDescription.text = dessert.description
    }
    
    @IBOutlet weak var qtyAmount: UILabel!
    
    @IBAction func qtyValueChange(_ sender: Any) {
        qtyAmount.text = String(qtyValue.value)
    }
    

    @IBAction func addToCart(_ sender: Any) {
        addToCart()
        showAlert()
    }
    
    func addToCart(){
        let newItem = CartList(context: context)
        
        newItem.itemName = dessert.title
        newItem.qty = Double(qtyValue.value)
        newItem.price = Double(dessert.price)!
        newItem.subTotal = newItem.price * newItem.qty
        
        do {
            try self.context.save()
        }catch {
            
        }
        
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Done!", message: "You successfully added the food item into the cart.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert,animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        // Do any additional setup after loading the view.
    }


}
