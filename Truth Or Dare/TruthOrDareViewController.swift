//
//  TruthOrDareViewController.swift
//  Truth Or Dare
//
//  Created by Edwin Hernandez on 5/9/22.
//

import UIKit

class TruthOrDareViewController: UIViewController {

    var imageName = ""
    var item = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageChoice.image = UIImage(named: imageName)
        theoutcome.text = item
    }
    @IBOutlet weak var imageChoice: UIImageView!
    @IBOutlet weak var theoutcome: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
