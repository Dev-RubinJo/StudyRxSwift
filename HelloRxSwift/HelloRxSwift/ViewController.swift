//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by YooBin Jo on 2021/01/04.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1, 2, 3, 4, 5])
    }


}

