//
//  nextViewController.swift
//  sqlite
//
//  Created by Student-001 on 06/12/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    @IBOutlet weak var taskIdText: UITextField!
    
    @IBOutlet weak var tasknameTextField: UITextField!
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        let insertQuery = "insert into tasktable(taskId, taskName) values ('\(taskIdText.text!)','\(tasknameTextField.text!)')"
        let isSuccess = Dbwrapper.sharedObjet.executeQuery(query: insertQuery)
        if isSuccess
        {
            print("insert:sucess")
        }
        else
        {
            print("insert:failed")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
