//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Alessandro Musto on 2/15/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
  @IBOutlet weak var indexLabel: UILabel!
  var number : Int = 0
  var color: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
      indexLabel.text = String(number)
      view.backgroundColor = color

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
