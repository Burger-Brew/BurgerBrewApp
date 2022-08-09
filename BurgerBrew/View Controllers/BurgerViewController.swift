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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BurgerViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Swift.print("Count : \(burgers.count)")
        return burgers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BurgerCollectionViewCell", for: indexPath) as! BurgerCollectionViewCell
        cell.setup(with: burgers[indexPath.row])
        
        return cell
    }
}

extension BurgerViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 139, height: 250)
    }
}
