//
//  BurgerViewController.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-06.
//

import UIKit

class BurgerViewController: UIViewController {

    //Declare outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let homeView = storyboard.instantiateViewController(withIdentifier:"homeView") as! Home_ViewController
        self.present(homeView, animated: true)
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
