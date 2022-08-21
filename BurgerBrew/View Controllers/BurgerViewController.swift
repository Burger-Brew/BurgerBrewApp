//
//  BurgerViewController.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-06.
//

import UIKit

class BurgerViewController: UIViewController {

    //Declare outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let homeView = storyboard.instantiateViewController(withIdentifier:"homeView") as! Home_ViewController
        self.present(homeView, animated: true)
    }


}

extension BurgerViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        Swift.print("Count : \(burgers.count)")
        return burgers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BurgerCollectionViewCell", for: indexPath) as! BurgerCollectionViewCell
        cell.setup(burger: burgers[indexPath.row])

        
        return cell
    }
    
    // Connect with Burger Detailed ViewController page
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let controller = storyboard.instantiateViewController(withIdentifier:"BurgerDetailedViewController") as! BurgerDetailedViewController
        controller.burger = burgers[indexPath.row]
        self.present(controller, animated: true, completion: nil)
       // let controller = BurgerDetailedViewController.instantiate()
        //navigationController?.pushViewController(controller, animated: true)
        
    }
}

extension BurgerViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 139, height: 250)
        
    
    }
}





