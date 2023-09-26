//
//  BaseScrollView.swift
//  WeatherApp-nbc
//
//  Created by t2023-m0059 on 2023/09/26.
//

import Foundation
import UIKit

class BaseScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Not implemeted xib")
    }

    func configure() {}
    func bind() {}
}
