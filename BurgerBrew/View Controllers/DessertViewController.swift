//
//  DessertViewController.swift
//  BurgerBrew
//
//  Created by Chandima Athapattu on 2022-08-11.
//

import UIKit

class DessertViewController: UIViewController {

    //Declare outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let homeView = storyboard.instantiateViewController(withIdentifier:"homeView") as! Home_ViewController
        self.present(homeView, animated: true)
    }
    
}

extension DessertViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dessert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DessertCollectionViewCell", for: indexPath) as! DessertCollectionViewCell
        cell.setup(with: dessert[indexPath.row])
        return cell
    }
    
    // Connect with Desset Details ViewController page
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let controller = storyboard.instantiateViewController(withIdentifier:"DessetDetailsViewController") as! DessetDetailsViewController
        controller.dessert = dessert[indexPath.row]
        self.present(controller, animated: true, completion: nil)
       // let controller = BurgerDetailedViewController.instantiate()
        
    }
}

extension DessertViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 139, height: 250)
    }
}

