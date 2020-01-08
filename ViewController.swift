//
//  ViewController.swift
//  Mycollectionview
//
//  Created by Yogesh Patel on 26/09/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var searchbar: UISearchBar!
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    var product = [
              ["Image" :  #imageLiteral(resourceName: "imgbelt.jpg"),
               "Productname" : "BELT","New Price" : "70 Rs.","Old Price" : "100 Rs."
              ],
              ["Image" :  #imageLiteral(resourceName: "watch"),

               "Productname" : "WATCH","New Price" : "250 Rs.","Old Price" : "350 Rs."
              ],
              ["Image" : #imageLiteral(resourceName: "fogg"),
               
               "Productname" : "FOGG","New Price" : "100 Rs.","Old Price" : "150 Rs."
              ],
              ["Image" : #imageLiteral(resourceName: "cap"),
               
               "Productname" : "CAP","New Price" : "90 Rs.","Old Price" : "120 Rs."
              ],
              ["Image" : #imageLiteral(resourceName: "IMG_2852"),
                            
                            "Productname" : "WALLET","New Price" : "90 Rs.","Old Price" : "120 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2854"),
                            
                            "Productname" : "HAIR GEL","New Price" : "110 Rs.","Old Price" : "200 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2853"),
                            
                            "Productname" : "HAIR WAX","New Price" : "80 Rs.","Old Price" : "150 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2855"),
                            
                            "Productname" : "FACEWASH","New Price" : "90 Rs.","Old Price" : "130 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2856"),
                            
                            "Productname" : "TIE","New Price" : "150 Rs.","Old Price" : "300 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2857"),
                            
                            "Productname" : "MASK","New Price" : "120 Rs.","Old Price" : "160 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2851"),
                            
                            "Productname" : "GOGGLES","New Price" : "60 Rs.","Old Price" : "100 Rs."
                           ],
              ["Image" : #imageLiteral(resourceName: "IMG_2858"),
                            
                            "Productname" : "BUCKET HAT","New Price" : "180 Rs.","Old Price" : "250 Rs."
                           ],
             ]
   var Myarr = [
          
          ["Image":#imageLiteral(resourceName: "IMG_2867"),
           "Productname":"Barbie Doll",
           "New Price":"500 Rs.",
           "Old Price":"650 Rs."
          ],
          ["Image":#imageLiteral(resourceName: "IMG_2864"),
                  "Productname":"Cap",
                  "New Price":"200 Rs.",
                  "Old Price":"350 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "watch"),
                  "Productname":"Watch",
                  "New Price":"500 Rs.",
                  "Old Price":"650 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "IMG_2851"),
                  "Productname":"Goggles",
                  "New Price":"100 Rs.",
                  "Old Price":"250 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "IMG_2865"),
                  "Productname":"Brecelate",
                  "New Price":"350 Rs.",
                  "Old Price":"400 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "IMG_2866"),
                  "Productname":"Pink Watch",
                  "New Price":"250 Rs.",
                  "Old Price":"350 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "IMG_2862"),
                  "Productname":"Barbie Doll",
                  "New Price":"500 Rs.",
                  "Old Price":"650 Rs."
                 ],
          ["Image":#imageLiteral(resourceName: "IMG_2867"),
                  "Productname":"Shoes",
                         "New Price":"600 Rs.",
                         "Old Price":"800 Rs."
                        ],
         ]

    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        switch seg.selectedSegmentIndex{
               case 0 :
                   return product.count
               case 1:
                   return Myarr.count
                   
               default:
                   break
               }
               return 0
              }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Productcell
        
        switch seg.selectedSegmentIndex {
              case 0:
                  cell.name.text = self.product[indexPath.row]["ProductName"] as? String
                  cell.newprice.text = self.product[indexPath.row]["New Price"] as? String
                  cell.oldprice.text = self.product[indexPath.row]["Old Price"] as? String
                  cell.productimage.image = self.product[indexPath.row]["Image"] as? UIImage
              case 1:
                  cell.name.text = self.Myarr[indexPath.row]["ProductName"] as? String
                  cell.newprice.text = self.Myarr[indexPath.row]["New Price"] as? String
                  cell.oldprice.text = self.Myarr[indexPath.row]["Old Price"] as? String
                  cell.productimage.image = self.Myarr[indexPath.row]["Image"] as? UIImage
                  
              default:
                  break
              }
        cell.contentView.layer.cornerRadius = 5.0
               cell.contentView.layer.borderWidth = 1.0
               cell.contentView.layer.borderColor = UIColor.clear.cgColor
               cell.contentView.layer.masksToBounds = false
               cell.layer.shadowColor = UIColor.darkGray.cgColor
               cell.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
               cell.layer.shadowRadius = 5.0
               cell.layer.shadowOpacity = 100.0
               cell.layer.masksToBounds = false
               cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
             
                 return cell
             }
    
   
//        cell.name.text = self.product[indexPath.row]["Productname"] as? String
//           cell.newprice.text = self.product[indexPath.row]["New Price"] as? String
//           cell.oldprice.text = self.product[indexPath.row]["Old Price"] as? String
//        cell.productimage.image = self.product[indexPath.row]["Image"] as? UIImage
//
    
        
    
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let Detailscene = self.storyboard?.instantiateViewController(identifier: "InfoViewController") as! InfoViewController
        self.navigationController?.pushViewController(Detailscene, animated: true)
        switch seg.selectedSegmentIndex
        {
        case 0:
             Detailscene.img = (product[indexPath.row]["Image"] as? UIImage)!
             Detailscene.Pname = (product[indexPath.row]["Productname"] as? String)!
             Detailscene.Ofprice = (product[indexPath.row]["New Price"] as? String)!
             Detailscene.Orprice = (product[indexPath.row]["Old Price"] as? String)!
        case 1:

            Detailscene.img = (Myarr[indexPath.row]["Image"] as? UIImage)!
            Detailscene.Pname = (Myarr[indexPath.row]["Productname"] as? String)!
            Detailscene.Ofprice = (Myarr[indexPath.row]["New Price"] as? String)!
            Detailscene.Orprice = (Myarr[indexPath.row]["Old Price"] as? String)!
            
        default:
            break
            
            
            
        }
        
        
    }
    
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
        collectionview.reloadData()
        
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
             let rotationTransformation = CATransform3DTranslate(CATransform3DIdentity, -500, 10, 0)
                           cell.layer.transform = rotationTransformation
                           cell.alpha = 0.5
                           UIView.animate(withDuration: 0.5) {
                               cell.layer.transform = CATransform3DIdentity
                               cell.alpha = 1.0
       }
       
    
    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

}
