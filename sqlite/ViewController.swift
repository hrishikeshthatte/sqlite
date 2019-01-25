//
//  ViewController.swift
//  sqlite
//
//  Created by Student-001 on 06/12/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alltaskName = [String]()
    var alltaskId = [String]()
    @IBAction func nextButton(_ sender: UIBarButtonItem) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController")as! nextViewController
        navigationController?.pushViewController(next, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let selectionQuery = "select taskId, taskName from Tasktable"
        Dbwrapper.sharedObjet.selectAlltask(query: selectionQuery)
        alltaskName = Dbwrapper.sharedObjet.taskNameArray!
        alltaskId = Dbwrapper.sharedObjet.taskIdArray!
        if alltaskName.count>0
        {
            print(alltaskName)
            print(alltaskId)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

