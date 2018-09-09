//
//  BaseViewController.swift
//  SequenceOfEvents
//
//  Created by Olga on 9/9/18.
//  Copyright © 2018 Olha Tretiak. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var resultTextView: UITextView!
    
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
    
    func name() -> String {
        return ""
    }
    
    func addToLog(_ functionName:String){
        LogInfo.text += ("\(name()): \(functionName)\n")
        if self is OrangeViewController,resultTextView.text != nil {
            resultTextView.text =  LogInfo.text
        }
     }

}
