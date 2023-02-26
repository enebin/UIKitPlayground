//
//  AnimateViewController.swift
//  UIKitPlayground
//
//  Created by Young Bin on 2023/02/26.
//

import UIKit
import SnapKit

class AnimateViewController: UIViewController {
    lazy var sampleView: UIButton = {
        let view = UIButton()
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let sample = sampleView
        view.addSubview(sample)
        
        sampleView.backgroundColor = .red
        sampleView.snp.makeConstraints { make in
            make.centerX.equalTo(self.view.snp.centerX)
            make.top.equalTo(self.view.snp.top)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        sampleView.addTarget(self, action: #selector(self.uiViewPropertyAnimator), for: .touchUpInside)
        sampleView.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension AnimateViewController {
    @objc
    func uiViewPropertyAnimator() {
        let animation = UIViewPropertyAnimator(duration: 3, curve: .easeInOut) {
            self.sampleView.frame.origin.y += 100
            self.sampleView.alpha = 0.5
        }
        animation.startAnimation()
    }
}
