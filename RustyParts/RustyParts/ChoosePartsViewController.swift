//
//  ChoosePartsViewController.swift
//  RustyParts
//
//  Created by Jeremy Skrdlant on 5/9/24.
//

import UIKit

class ChoosePartsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PartViewDelegate {
    func updateCart() {
        amountOfItemsInCart.text = "\(Cart.main.getItemCount())"
    }
    
    @IBOutlet weak var amountOfItemsInCart: UILabel!
    
   
    

    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 374, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return inventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partView", for: indexPath) as? IndividualPartCard else {
            return UICollectionViewCell();
        }
        let part = inventory[indexPath.row]
        //TODO: set the part to the cell
        cell.costLabel.text = "part.cost"
        cell.partImage.image = UIImage(named: part.imageName)
        
        
        return cell
    }
    

}
protocol PartViewDelegate{
    func updateCart()
}

class IndividualPartCard: UICollectionViewCell{
    var part:Part?
    var delegate: PartViewDelegate?
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var partImage: UIImageView!
    
    @IBAction func addToCart() {
        Cart.main.addPart(part: part!)
        delegate?.updateCart()
    }
}
