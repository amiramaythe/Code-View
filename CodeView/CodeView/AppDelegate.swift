//
//  AppDelegate.swift
//  CodeView
//
//  Created by Amira Maythe Vasquez on 18/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//


//etapa 1 - Deletar a Storyboard
//etapa 2 - Adicionar no delegate a inicialização da window
//etapa 3 - testar na view controller por meio da loadView
//etapa 4 - separar o codigo em outro arquivo para representar a tela

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        //inicialização da window: QUE recebe um frame da tela
        let window = UIWindow(frame: UIScreen.main.bounds)

        //setar a rootviewcontroller(navigation, tabBar..)
        let viewController = ViewController()
        window.rootViewController = viewController

        self.window = window
        window.makeKeyAndVisible() //aparecer na tela
        return true
    }


}

