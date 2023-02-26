//
//  ViewController.swift
//  UIKitPlayground
//
//  Created by 이영빈 on 2022/12/23.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool){
        let vc = AnimateViewController()
        self.show(vc, sender: self)
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("frame: ", scrollView.frame)
        print("bounds: ", scrollView.bounds)
    }
}
