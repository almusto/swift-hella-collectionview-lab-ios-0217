//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

  @IBOutlet weak var hellaCollectionView: UICollectionView!
  var numberOfSections = 100
  var fibonacciNumbers : [Int] = [0,1]
  var number : Int = 0


    override func viewDidLoad() {
      hellaCollectionView.delegate = self
      hellaCollectionView.dataSource = self
      createFibonacci()
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return numberOfSections
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = hellaCollectionView.dequeueReusableCell(withReuseIdentifier: "HellaCell", for: indexPath) as! HellaCollectionViewCell

    cell.number = indexPath.row

    if fibonacciNumbers.contains(indexPath.item) {
      cell.backgroundColor = UIColor.purple
    } else {
      cell.backgroundColor = UIColor.green
    }

    return cell
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let dest = segue.destination as! HellaDetailViewController
    let cell = sender as! HellaCollectionViewCell
    dest.color = cell.backgroundColor
    dest.number = cell.number


  }

  func createFibonacci() {
    

    while fibonacciNumbers[fibonacciNumbers.count - 1] <= numberOfSections {
      let newNumber = fibonacciNumbers[fibonacciNumbers.count - 1] + fibonacciNumbers[fibonacciNumbers.count - 2]
      fibonacciNumbers.append(newNumber)
    }

    if fibonacciNumbers[fibonacciNumbers.count - 1] > numberOfSections {
      fibonacciNumbers.remove(at: fibonacciNumbers.count - 1)
    }


  }

}

