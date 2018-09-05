//
//  RedViewController.swift
//  SequenceOfEvents
//
//  Created by Olga on 9/6/18.
//  Copyright © 2018 Olha Tretiak. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var fullLogs : String = ""
    let name = "Orange"
    
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
        fullLogs.append("\(name): \(functionName)\n")
        updateLogsOnLabel()
    }
     
    
    func updateLogsOnLabel(){
        if resultLabel.text != nil {
            resultLabel.text = fullLogs
        }
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        super.willMove(toParentViewController:parent)
        if parent == nil {
            // The back button was pressed
            let blueViewController = self.navigationController?.viewControllers[0] as? BlueViewController
            blueViewController?.cycleText = fullLogs
            fullLogs = ""
        }
    }
 

}
