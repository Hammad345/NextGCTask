//
//  NotificationVController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class NotificationVController: UIViewController {
    
    let notificationArray = ["تأكد من السيرة الذاتية", "الاحد 2025/5/3", "السيرة الذاتية غير مكتملة تأكد من تعبئة جميع الخانات لظمان ظهورها للشركات"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func backBtnActionMethode(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }

    extension NotificationVController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return 120
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 8
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationVCTableVCell", for: indexPath) as! NotificationVCTableVCell
            cell.titleLbl.text = notificationArray[0]
            cell.dateLbl.text = notificationArray[1]
            cell.descriptionLbl.text = notificationArray[2]
            return cell
        }
}
