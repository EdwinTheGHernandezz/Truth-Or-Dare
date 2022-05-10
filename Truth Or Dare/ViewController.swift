//
//  ViewController.swift
//  Truth Or Dare
//
//  Created by Edwin Hernandez on 4/26/22.
//

import UIKit

class ViewController: UIViewController {

    var truthItems = ["When was the last time you lied?", "What's sometrhing your parents dont know about you?","What's the most embarrassing thing you've done?", "What's the biggest regret you have?"]
    
    var dareItems = ["Send a random message to the 5'th person in your messages.","Go say something random or funny to the closest person near you.","Impersonate someone you can do.","Run in place wherever you are"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        assignbackground()
    }
 
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! TruthOrDareViewController
        let randomNumber = Int.random(in: 0...3)
        if segue.identifier == "truth"
        {
            nvc.imageName = "truth-paper"
            nvc.item = truthItems[randomNumber]
        }
        else
        {
            nvc.imageName = "dare"
            nvc.item = dareItems[randomNumber]
        }
    }
    
    func assignbackground()


 {
        let background = UIImage(named: "red sign")
         
         var imageview : UIImageView!
         imageview = UIImageView (frame: view.bounds)
         imageview.contentMode = UIView.ContentMode.scaleAspectFill
         imageview.clipsToBounds = true
          imageview.image = background
         imageview.center = view.center
         view.addSubview(imageview)
         self.view.sendSubviewToBack(imageview)

         
     }
    
  
}


