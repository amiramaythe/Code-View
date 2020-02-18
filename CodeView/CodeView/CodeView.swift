//
//  CodeView.swift
//  CodeView
//
//  Created by Amira Maythe Vasquez on 18/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import Foundation

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAddConfigurate()
    func setupView()
}
//fazer com quem chame esse protocolo faça de forma ordenada,de acordo com a padronização
extension CodeView {
    func setupView(){
        buildViewHierarchy()
        setupConstraints()
        setupAddConfigurate()
    }
}
