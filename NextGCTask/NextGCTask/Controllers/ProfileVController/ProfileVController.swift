//
//  ProfileVController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class ProfileVController: UIViewController {
    let headerCellHight: CGFloat = 35

    @IBOutlet weak var changeBtn: UIButton!
    @IBOutlet weak var profileImageBGView: UIView!
    @IBOutlet weak var ProfileImageView: UIImageView!
    
    let sectionsTitlesArray = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    let educationInfoArray = ["ثانوي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageBGView.layer.cornerRadius = 0.5 * profileImageBGView.bounds.size.width
        profileImageBGView.layer.shadowColor = UIColor.black.cgColor
        profileImageBGView.layer.shadowOpacity = 1
        profileImageBGView.layer.shadowOffset = CGSize(width: 0, height: 10)
        profileImageBGView.layer.shadowRadius = 10
        ProfileImageView.layer.cornerRadius = 0.5 * profileImageBGView.bounds.size.width
    }
        
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
        
    @IBAction func changeBtnAction(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EditProfileVController") as! EditProfileVController
        present(vc, animated: false, completion: nil)
    }
}
   

// Extention for Tableview delegates and data source
extension ProfileVController: UITableViewDelegate, UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 140
            }
        }
        else if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 170
            }
        }
        else if indexPath.section == 2 || indexPath.section == 3 || indexPath.section == 4{
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 90
            }
        }
        else {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 120
            }
        }
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "UserInfoTVCell", for: indexPath) as! UserInfoTVCell
                return cell
            }
        }
        else if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "EducationTVCell", for: indexPath) as! EducationTVCell
                cell.titleLbl.text = educationInfoArray[0]
                cell.nameLbl.text = educationInfoArray[1]
                cell.placeLbl.text = educationInfoArray[2]
                cell.secondTitleLbl.text = "جامعي - تسويق"
                cell.secondNameLbl.text = educationInfoArray[1]
                cell.secondPlaceLbl.text = educationInfoArray[2]
                return cell
            }
        }
        else if indexPath.section == 2 || indexPath.section == 3 || indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "CoursesTVCell", for: indexPath) as! CoursesTVCell
                return cell
            }
        }
    else {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "LanguagesTVCell", for: indexPath) as! LanguagesTVCell
                return cell
            }
        }
    }
}
