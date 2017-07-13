//
//  ViewController.swift
//  AlternateIconDemo
//
//  Created by Gao on 13/07/2017.
//  Copyright © 2017 leave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapDefault() {
        setIcon(name: nil)
    }

    @IBAction func didTapIcon1() {
        setIcon(name: "icon1")
    }

    @IBAction func didTapIcon2() {
        setIcon(name: "icon2")
    }

    func setIcon(name:String?) {
        guard #available(iOS 9.3, *) else {
            return
        }
        UIApplication.shared.setAlternateIconName(name) { (error) in
            if let error = error {
                print(error)
            }
        }
    }
}

