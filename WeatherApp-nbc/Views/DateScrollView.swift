//
//  DateScrollView.swift
//  WeatherApp-nbc
//
//  Created by t2023-m0059 on 2023/09/26.
//

import Foundation
import UIKit

class DateScrollView: UIScrollView {
    
    var viewTitle: String = "test"
    var labelSize: CGFloat = 15
    var stackViewHoirzontalSpacing: CGFloat = 2
    var stackViewVerticalSpacing: CGFloat = 2
    
    var dataSource: [SomeDataModel]? {
        didSet { bind() }
    }
    
    // MARK: - Properties
    // 가로로 움직이는 것
    lazy var dateStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = stackViewHoirzontalSpacing
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.backgroundColor = .blue
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    // 레이아웃 설정
    func configure() {
        showsHorizontalScrollIndicator = false
        bounces = false
        backgroundColor = .red
        
        setUI()
        setConstraint()
    }
    
    private func setUI() {
        addSubview(dateStackView)
        dateStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            dateStackView.topAnchor.constraint(equalTo: topAnchor),
            dateStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            dateStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            dateStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    // data가 변경되면 불려지도록 구현.
    func bind() {
        var i: Int = 0
        
        dataSource?.forEach { data in
            print("forEach Test i: \(i), data : \(data.dayOfWeek), \(data.day)")
            i += 1
            let dayOfWeekLabel = setLabel(text: data.dayOfWeek)
            let dayLabel = setLabel(text: data.day)
            
            let stackView = setStackView(label1: dayOfWeekLabel, label2: dayLabel)
            
            NSLayoutConstraint.activate([
                stackView.heightAnchor.constraint(equalToConstant: 40),
                stackView.widthAnchor.constraint(equalToConstant: 80)
            ])
            
            dateStackView.addArrangedSubview(stackView)
        }
    }
    
    func setLabel(text: String) -> UILabel {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: labelSize)
        label.text = text
        
        return label
    }
    
    func setStackView(label1: UILabel, label2: UILabel) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [label1, label2])
        stackView.spacing = stackViewVerticalSpacing
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.backgroundColor = .blue
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}
