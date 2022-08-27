//
//  DeliverViewController.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-23.
//

import UIKit
import SafariServices
import MessageUI

class DeliverViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var mobileTxt: UITextField!
    @IBOutlet weak var cityTxt: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [CartList]()
    
    @IBAction func deliver(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let bodyContent = bodyContentMaker()
            let address = addressTxt.text
            let mobile = mobileTxt.text
            var finalBodyContent = "<h1>Order Details</h1><ul>" + bodyContent
            finalBodyContent += "</ul><p>" + address! + "</p><br><p>" + mobile! + "</p>"
            let vc = MFMailComposeViewController()
            vc.delegate = self
            vc.setSubject("Order Placed")
            vc.setToRecipients(["kevin.antony.software@gmail.com"])
            vc.setMessageBody(bodyContent, isHTML: true)
            present(vc, animated: true)
        }
        else {
            guard let url = URL(string: "https://www.google.com") else {
                return
            }
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bodyContentMaker() -> String {
        var tempBody = ""
        for foodItem in models {
            tempBody = tempBody + "<Li>" + foodItem.itemName! + " : " + String(foodItem.qty) + "</li>"
        }
        return tempBody
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
