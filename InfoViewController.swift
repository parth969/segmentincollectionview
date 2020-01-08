//
//  InfoViewController.swift
//  Mycollectionview
//
//  Created by Yogesh Patel on 28/09/19.
//  Copyright © 2019 yogesh patel. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var productname: UILabel!
    
    
    @IBOutlet weak var offerprice: UILabel!
    
    @IBOutlet weak var originalprice: UILabel!
    
    var img = UIImage()
    var Pname = ""
    var Ofprice = ""
    var Orprice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = img
        productname.text = Pname
        offerprice.text = Ofprice
        originalprice.text = Orprice

        // Do any additional setup after loading the view.
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
