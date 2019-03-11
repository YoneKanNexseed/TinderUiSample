//
//  ViewController.swift
//  TinderUiSample
//
//  Created by yonekan on 2019/03/11.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController, KolodaViewDelegate, KolodaViewDataSource {
    
    @IBOutlet weak var kolodaView: KolodaView!
    
    var images = [
        UIImage(named: "animal01"),
        UIImage(named: "animal02"),
        UIImage(named: "animal03"),
        UIImage(named: "animal04"),
        UIImage(named: "animal05"),
        UIImage(named: "animal01"),
        UIImage(named: "animal02"),
        UIImage(named: "animal03")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
    }

    // スワイプするカードの枚数
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return images.count
    }

    // カードのデザインや表示内容などを設定
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let imageView = UIImageView(image: images[index])
        imageView.backgroundColor = .yellow
        return imageView
    }
}

