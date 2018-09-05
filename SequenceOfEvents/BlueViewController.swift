//
//  ViewController.swift
//  SequenceOfEvents
//
//  Created by Olga on 9/6/18.
//  Copyright © 2018 Olha Tretiak. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    let name = "Blue"
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
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToOrangeSegue" {
            let orangeViewController = segue.destination as! OrangeViewController
            let existingText = orangeViewController.fullLogs
            orangeViewController.fullLogs = "\(existingText) \n\(cycleText)"
            cycleText = ""
        }
    }
    
}

