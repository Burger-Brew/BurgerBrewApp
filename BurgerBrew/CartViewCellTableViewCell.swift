//
//  CartViewCellTableViewCell.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-22.
//

import UIKit

class CartViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var subTotal: UILabel!
    @IBOutlet weak var qty: UIStepper!
    
    @IBOutlet weak var qtyLabel: UILabel!
    
    
    var callback: ((Int) -> ())?
    
    public func configure(Newqty: Double) {
        
        //subTotal.text = subTotalValue
        qty.value = Newqty
    }
    
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        
        let val = Int(sender.value)
        //myLabel2.text = "\(val)"
        // send value back to controller via closure
        callback?(val)
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
