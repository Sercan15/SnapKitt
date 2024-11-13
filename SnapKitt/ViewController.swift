//
//  ViewController.swift
//  SnapKitt
//
//  Created by Sercan Yeşilyurt on 13.11.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // Cihaz alanlarını tanımla
    let deviceView1 = UIView()
    let deviceImageView1 = UIImageView()
    let deviceLabel1 = UILabel()
    let deviceButton1 = UIButton()
    
    let deviceView2 = UIView()
    let deviceImageView2 = UIImageView()
    let deviceLabel2 = UILabel()
    let deviceButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        // Birinci cihaz görünümünü ayarla
        deviceView1.backgroundColor = .systemGray6
        deviceView1.layer.cornerRadius = 10
        view.addSubview(deviceView1)
        
        deviceImageView1.image = UIImage(systemName: "lightbulb")
        deviceImageView1.contentMode = .scaleAspectFit
        deviceView1.addSubview(deviceImageView1)
        
        deviceLabel1.text = "Smart Light"
        deviceLabel1.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        deviceLabel1.textAlignment = .center
        deviceView1.addSubview(deviceLabel1)
        
        deviceButton1.setTitle("Turn On/Off", for: .normal)
        deviceButton1.backgroundColor = .systemBlue
        deviceButton1.layer.cornerRadius = 5
        deviceView1.addSubview(deviceButton1)
        
        // SnapKit ile konumlandırmalarını ayarla
        deviceView1.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(150)
        }
        
        deviceImageView1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        deviceLabel1.snp.makeConstraints { make in
            make.top.equalTo(deviceImageView1.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
        }
        
        deviceButton1.snp.makeConstraints { make in
            make.top.equalTo(deviceLabel1.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        
        // İkinci cihaz görünümünü ayarla
        deviceView2.backgroundColor = .systemGray6
        deviceView2.layer.cornerRadius = 10
        view.addSubview(deviceView2)
        
        deviceImageView2.image = UIImage(systemName: "thermometer")
        deviceImageView2.contentMode = .scaleAspectFit
        deviceView2.addSubview(deviceImageView2)
        
        deviceLabel2.text = "Smart Thermostat"
        deviceLabel2.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        deviceLabel2.textAlignment = .center
        deviceView2.addSubview(deviceLabel2)
        
        deviceButton2.setTitle("Turn On/Off", for: .normal)
        deviceButton2.backgroundColor = .systemBlue
        deviceButton2.layer.cornerRadius = 5
        deviceView2.addSubview(deviceButton2)
        
        // SnapKit ile konumlandırmalarını ayarla
        deviceView2.snp.makeConstraints { make in
            make.top.equalTo(deviceView1.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(150)
        }
        
        deviceImageView2.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        deviceLabel2.snp.makeConstraints { make in
            make.top.equalTo(deviceImageView2.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
        }
        
        deviceButton2.snp.makeConstraints { make in
            make.top.equalTo(deviceLabel2.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
    }
}

