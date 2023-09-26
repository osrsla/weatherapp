//
//  WeatherViewController.swift
//  WeatherApp-nbc
//
//  Created by t2023-m0059 on 2023/09/25.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController {
    
//    let weatherView = WeatherView()
//    let dateScrollView = DateScrollView()
    lazy var weatherView: WeatherView = {
        let view = WeatherView()
        
        return view
    }()
    
    lazy var dateScrollView: DateScrollView = {
        let view = DateScrollView()
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        insertDataSource()
    }
    
    // MARK: Helpers
    func configure() {
        view.backgroundColor = .white
        
        setUI()
        setConstraint()
    }
    
    private func setUI() {
        view.addSubview(weatherView)
        weatherView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(dateScrollView)
        dateScrollView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            weatherView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            weatherView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            weatherView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            weatherView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            weatherView.heightAnchor.constraint(equalToConstant: 50),
            
            dateScrollView.topAnchor.constraint(equalTo: weatherView.bottomAnchor, constant: 20),
            dateScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dateScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dateScrollView.heightAnchor.constraint(equalToConstant: 50), // 차후 설정 예정
            
        ])
    }
    
    private func insertDataSource() {
        dateScrollView.dataSource = Mocks.getDataSource()
    }
}
