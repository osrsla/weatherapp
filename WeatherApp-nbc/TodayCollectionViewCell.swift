//
//  TodayCollectionViewCell.swift
//  WeatherApp-nbc
//
//  Created by t2023-m0059 on 2023/09/25.
//

import Foundation
import UIKit

class TodayCollectionViewCell: UICollectionViewCell {
    static let identifier = "todayCollectionViewCell"
    
//    var time: String = ""
//    var icon: String = ""
//    var temp: String = ""
    
    let timeLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    let iconLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    let tempLabel: UILabel = {
        let label = UILabel()

        label.font = UIFont.systemFont(ofSize: 14)
        
        return label
    }()
    
    lazy var weatherStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [timeLabel, iconLabel, tempLabel])
        stackView.spacing = 2
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    private func setUI() {
        addSubview(weatherStackView)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            weatherStackView.topAnchor.constraint(equalTo: topAnchor),
            weatherStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            weatherStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            weatherStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    func configure(with time: String, icon: String, temp: String) {
        timeLabel.text = time
        iconLabel.text = icon
        tempLabel.text = temp
    }
}
