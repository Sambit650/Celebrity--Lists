//
//  ViewController.swift
//  colldemo
//
//  Created by Sambit Das on 12/08/19.

import UIKit

class ViewController: UIViewController  {
    
    //MARK:- Outlets and Variables
    @IBOutlet var collectionview: UICollectionView!
    
    var arrimg = [#imageLiteral(resourceName: "xAlluArjun"),#imageLiteral(resourceName: "xAamirKhan"),#imageLiteral(resourceName: "Tom"),#imageLiteral(resourceName: "SRK"),#imageLiteral(resourceName: "Dhanush"),#imageLiteral(resourceName: "JohnnyDepp"),#imageLiteral(resourceName: "SahidKapoor"),#imageLiteral(resourceName: "xAlluArjun2"),#imageLiteral(resourceName: "MaheshBabu"),#imageLiteral(resourceName: "Hrithik"),#imageLiteral(resourceName: "Vijay"),#imageLiteral(resourceName: "JohnCena")]
    var arrlbl = ["Allu Arjun","Amir Khan","Tom Cros","SRK","Dhanush","Jonny Deep","Sahid Kapoor ","Stylish Star","Mahesh Babu","Hritik","Vijay","John Cena"]
    
    //MARK:- View LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

//MARK:- CollectionView DataSource and Delegate
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = arrimg[indexPath.row]
        cell.lbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail : DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        imageDetail.img1 = arrimg[indexPath.row]
        imageDetail.lbl1 = arrlbl[indexPath.row]
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
}
