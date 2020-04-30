//
//  TextField.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/04/30.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

class TextField: UITextField {

    // MARK: IBInspectable

    @IBInspectable var lineColor: UIColor = .black {
        didSet {
            underLineView.backgroundColor = lineColor
        }
    }

    // MARK: Properties

    private let underLineView = UIView()

    // MARK: Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        commonInit()
    }
    private func commonInit() {
        isExclusiveTouch = true
        backgroundColor = .clear
        borderStyle = .none
        contentVerticalAlignment = .top

        setupViews()
    }

    // MARK: Setup UI

    private func setupViews() {
        // Under line
        underLineView.backgroundColor = lineColor
        underLineView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(underLineView)
        NSLayoutConstraint.activate([
            underLineView.leadingAnchor.constraint(equalTo: leadingAnchor),
            underLineView.trailingAnchor.constraint(equalTo: trailingAnchor),
            underLineView.bottomAnchor.constraint(equalTo: bottomAnchor),
            underLineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
