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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.maximumZoomScale = 4.0
        scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool){
//        let vc = AnimateViewController()
//        self.show(vc, sender: self)
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("frame: ", scrollView.frame)
        print("bounds: ", scrollView.bounds)
    }
}
