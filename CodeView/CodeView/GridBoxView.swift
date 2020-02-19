//
//  GridBoxView.swift
//  CodeView
//
//  Created by Amira Maythe Vasquez on 18/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

//essa classe está herdando de UIView
final class GridBoxView: UIView {

    lazy var imageview: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//vai conter o title e o subtitle
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension GridBoxView: CodeView {
    //adicionar a view
    func buildViewHierarchy() {
        addSubview(imageview)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
    }
    //adicionar as constriants (right/bottom (-) left/top (+)
    func setupConstraints() {
        //constraints da imagem
        imageview.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageview.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageview.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
         imageview.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true

        //constraints do title e subtitle
        textContainer.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        textContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textContainer.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textContainer.bottomAnchor.constraint(equalTo: imageview.bottomAnchor).isActive = true
    }
    //setup adicional
    func setupAddConfigurate() {

    }


}

