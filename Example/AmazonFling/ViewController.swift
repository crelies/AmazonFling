//
//  ViewController.swift
//  AmazonFling
//
//  Created by crelies on 28.03.2018.
//  Copyright (c) 2018 Christian Elies. All rights reserved.
//

import UIKit

import AmazonFling

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let discoveryController = DiscoveryController()
        discoveryController.searchPlayer(withId: "amzn.thin.pl", andListener: self)
    }
}

extension ViewController: DiscoveryListener {
    func deviceDiscovered(_ device: RemoteMediaPlayer!) {
        print("Discovered device [\(device)]")
    }
    
    func deviceLost(_ device: RemoteMediaPlayer!) {
        print("Lost device [\(device)]")
    }
    
    func discoveryFailure() {
        print("Discovery failed")
    }
}
