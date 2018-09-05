//
//  GreenViewController.swift
//  SequenceOfEvents
//
//  Created by Olga on 9/6/18.
//  Copyright © 2018 Olha Tretiak. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    let name = "Green"
    var cycleText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToLog(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addToLog(#function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addToLog(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addToLog(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addToLog(#function)
    }
    
    func addToLog(_ functionName:String?){
        guard let functionName = functionName else {
            return
        }
        cycleText.append("\(name): \(functionName)\n")
    }
    
    
    override func willMove(toParentViewController parent: UIViewController?) {
        super.willMove(toParentViewController:parent)
        if parent == nil {
            // The back button was pressed
            let orangeViewController = self.navigationController?.viewControllers[1] as? OrangeViewController
            let existingText = orangeViewController?.fullLogs
            orangeViewController?.fullLogs = "\(existingText ?? "") \(cycleText)"
            cycleText = ""
        }
    }
    
}
