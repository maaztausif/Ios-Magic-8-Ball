//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by maJor on 09/02/2020.
//  Copyright © 2020 maJor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    var randomImageNo:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAsk(_ sender: Any) {
        randImage()
    }
    func randImage(){
        randomImageNo = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: "ball\(randomImageNo+1)")
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randImage()
    }
}

