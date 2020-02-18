//
//  ViewController.swift
//  CodeView
//
//  Created by Amira Maythe Vasquez on 18/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //setar a screen para self.view
    let screen = ViewControllerScreen()

    //carrega a interface que foi criada 
    override func loadView() {
        //criando uma view
        self.view = screen
//        let view = UIView(frame: UIScreen.main.bounds)
//        view.backgroundColor = .red
//        //setar a view do viewController para ser essa view criada
//        self.view = view

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

