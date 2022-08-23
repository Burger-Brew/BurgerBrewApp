//
//  CartViewController.swift
//  BurgerBrew
//
//  Created by kevin antony on 2022-08-22.
//

import UIKit

class CartViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
//    @IBOutlet weak var itemName: UILabel!
//    @IBOutlet weak var subTotal: UILabel!
//    @IBOutlet weak var qty: UIStepper!
//
//    @NSManaged public var itemName: String?
//    @NSManaged public var price: Double
//    @NSManaged public var qty: Double
//    @NSManaged public var subTotal: Double
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private var models = [CartList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CartViewCellTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CartViewCellTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        
        getAllItems()
        setTotal()
        
    }
    func getAllItems() {
        do {
            self.models = try context.fetch(CartList.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.setTotal()
            }
            
        } catch {
            //error
        }
    }
    func setTotal() {
        var tempTotal : Double = 0.00
        for foodItem in models {
            tempTotal = tempTotal + Double(foodItem.subTotal)
        }
        total.text = String(tempTotal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = models[indexPath.row]
        let currentSubTotal = models[indexPath.row].subTotal
        let currentQty = models[indexPath.row].qty

        let cell = tableView.dequeueReusableCell(withIdentifier: "CartViewCellTableViewCell", for: indexPath) as! CartViewCellTableViewCell
        
        cell.configure(Newqty: Double(currentQty))
        //public func configure(subTotalValue: String, Newqty: Double) {

        cell.callback = { (val) in
                print("Stepper in cell at \(indexPath) changed to: \(val) and the current value is \(currentSubTotal)")
            self.updateItem(item: item, newQtyText: String(val))
        }
        
        cell.itemName.text = models[indexPath.row].itemName
        cell.subTotal.text = String(models[indexPath.row].subTotal)
        cell.qty.value = models[indexPath.row].qty
        cell.qtyLabel.text = String(models[indexPath.row].qty)
        
        return cell
    }
    func updateItem(item: CartList, newQtyText: String){
        let myQty = Double(newQtyText)
        item.subTotal = myQty! * item.price
        item.qty = myQty!
        
        do {
            try self.context.save()
            getAllItems()
        }catch {
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let item = models[indexPath.row]
        if editingStyle == .delete {
            tableView.beginUpdates()
            models.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
        self.deleteItem(item: item)
    }
      
    
    func deleteItem(item: CartList){
        context.delete(item)
        do {
            try context.save()
            getAllItems()
        }catch {
            
        }
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
