//
//  ViewController.swift
//  Laboratorio4
//
//  Created by Luis Mora Rivas on 28/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SegueTapped(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let greenViewController = mainStoryBoard.instantiateViewController(withIdentifier: "GreenViewController") as? GreenViewController else {
            print("Couldn't find the view controller")
            return
        }
        
        // Comment below line in step 13
        //navigationController?.pushViewController(greenViewController, animated: true)
        
        greenViewController.modalTransitionStyle = .flipHorizontal
        
        present(greenViewController, animated: true, completion: nil)
        
    }
}

