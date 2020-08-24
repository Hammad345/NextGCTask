//
//  ChildPopUpVController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class ChildPopUpVController: UIViewController {
    
    @IBOutlet weak var editBtn: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Buttons Action Mthodes
    
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func editBtnAction(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileVController") as! ProfileVController
        present(vc, animated: false, completion: nil)

    }
}
