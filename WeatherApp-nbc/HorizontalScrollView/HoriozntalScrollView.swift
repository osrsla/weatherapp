////
////  HoriozntalScrollView.swift
////  WeatherApp-nbc
////
////  Created by t2023-m0059 on 2023/09/26.
////
//
//import Foundation
//import UIKit
//
//class HorizontalScrollView: BaseScrollView {
//    var dataSource: [SomeDataModel]? {
//        didSet { bind() }
//    }
//
//    private lazy var stackView: UIStackView = {
//        let view = UIStackView()
//        view.axis = .horizontal
//        view.spacing = 16.0
//        view.backgroundColor = .separator
//
//        return view
//    }()
//
//    override func configure() {
//        super.configure()
//
//        showsHorizontalScrollIndicator = false
//        bounces = false
//
//        addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//        ])
//    }
//
//    override func bind() {
//        super.bind()
//
//        var i: Int = 0
//        
//        dataSource?.forEach { data in
//            print("forEach Test i: \(i)")
//            i += 1
//            let button = UIButton()
//            button.setTitleColor(.blue, for: .normal)
//            button.setTitle(data.name, for: .normal)
//            button.setImage(data.iamge, for: .normal)
//            button.imageEdgeInsets = UIEdgeInsets(top: 0.0, left: -4.0, bottom: 0.0, right: 0.0)
//
//            button.heightAnchor.constraint(equalToConstant: 42).isActive = true
//
//            stackView.addArrangedSubview(button)
//        }
//    }
//
//}
