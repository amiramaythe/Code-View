//
//  ViewControllerSrceen.swift
//  CodeView
//
//  Created by Amira Maythe Vasquez on 18/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

//etapa 5 - criando a view, adicionado, constraints e o setup adicional
//etapa 6 - introduzir um protocolo para facilitar e padronizar a criação da etapa 5
//etapa 7 - orgarnizar o codigo em outro arquivo
//etapa 8 - pensar o codeview como componentes

import UIKit

//essa classe está herdando de UIView
final class ViewControllerScreen: UIView {

    //criando a view - lazy(permite acessar outros metodos dentro desse bloco)
    lazy var button : UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fech", for: .normal)
        //não vai usar posicionamento absoluto
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var gridContainer : UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let leftBox = GridBoxView()
    let rightBox = GridBoxView()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ViewControllerScreen: CodeView {
    //adicionar a view
    func buildViewHierarchy() {
        addSubview(button)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
    }
    //adicionar as constriants (right/bottom (-) left/top (+)
    func setupConstraints() {
        //margem esquerda da view
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        //margem direita da view
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        //ALTURA
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //margem inferior da view
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true


        //constraints gridcontainer
        gridContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        gridContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        gridContainer.heightAnchor.constraint(equalToConstant: 320).isActive = true
        gridContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true

    }
    //setup adicional
    func setupAddConfigurate() {
        backgroundColor = .darkGray
    }


}

