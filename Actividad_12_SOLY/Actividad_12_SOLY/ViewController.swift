//
//  ViewController.swift
//  Actividad_12_SOLY
//
//  Created by user167235 on 4/27/21.
//  Copyright © 2021 user167235. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipoGesto: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(_:)))

        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(_:)))

        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    @objc func accionGesto(_ gesture: UIGestureRecognizer){
        if gesture.isKind(of:UITapGestureRecognizer.self){
            tipoGesto.text = "Tap"
        }
        if gesture.isKind(of:UISwipeGestureRecognizer.self){
            tipoGesto.text = "Swipe"
        }
        animacion()
    }
    
    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {
            self.tipoGesto.alpha = 1.0
        }) { _ in
            self.tipoGesto.alpha = 0.0
        }
    }
}

