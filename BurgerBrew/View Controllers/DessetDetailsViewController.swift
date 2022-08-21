//
//  DessetDetailsViewController.swift
//  BurgerBrew
//
//  Created by Sewvandi Wickramasinghe on 2022-08-21.
//

import UIKit

class DessetDetailsViewController: UIViewController {

    @IBOutlet weak var dessertName: UILabel!
    @IBOutlet weak var dessertImage: UIImageView!
    @IBOutlet weak var dessertPrice: UILabel!
    @IBOutlet weak var dessertDescription: UILabel!
    
    var dessert: Dessert!
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let dessertView = storyboard.instantiateViewController(withIdentifier:"DessertTabView") as! DessertViewController
        self.present(dessertView, animated: true)
    }
    
    private func populateView() {
        dessertImage.image = dessert.image
        dessertPrice.text = dessert.price
        dessertName.text = dessert.title
        dessertDescription.text = dessert.description
    }
    
    @IBAction func btnPlaceOrderClicked(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
        // Do any additional setup after loading the view.
    }


}
