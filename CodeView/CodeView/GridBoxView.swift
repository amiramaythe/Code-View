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
    }
    //adicionar as constriants (right/bottom (-) left/top (+)
    func setupConstraints() {
         imageview.heightAnchor.constraint(equalToConstant: 50).isActive = true
         imageview.widthAnchor.constraint(equalToConstant: 50).isActive = true

    }
    //setup adicional
    func setupAddConfigurate() {

    }


}

