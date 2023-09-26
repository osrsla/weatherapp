//
//  DayCollectionViewCell.swift
//  WeatherApp-nbc
//
//  Created by t2023-m0059 on 2023/09/25.
//

import Foundation
import UIKit

class DayCollectionViewCell: UICollectionViewCell {
    static let identifier = "dayCollectionViewCell"
    
    var time: String = ""
    var icon: String = ""
    var lowTemp: String = ""
    var highTemp: String = ""
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
