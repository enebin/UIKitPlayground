//
//  ViewController.swift
//  UIKitPlayground
//
//  Created by 이영빈 on 2022/12/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur"
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    
    private let rightLabel: UILabel = {
        let label = UILabel()
        label.text = "adipiscing elit. Curabitur commodo aliquam."
        label.textColor = .white
        label.backgroundColor = .orange
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.leftLabel)
        self.view.addSubview(self.rightLabel)
        
        self.leftLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        self.leftLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(56)
            $0.left.equalToSuperview()
        }
        
        self.rightLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        self.rightLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(56)
            $0.left.equalTo(self.leftLabel.snp.right)
            $0.right.equalToSuperview()
        }
    }
}
