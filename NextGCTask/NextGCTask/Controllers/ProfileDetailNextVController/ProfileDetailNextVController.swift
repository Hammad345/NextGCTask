//
//  ProfileDetailNextVController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class ProfileDetailNextVController: UIViewController {
    let headerCellHight: CGFloat = 35

    @IBOutlet weak var profileImageBGV: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
                
     //  Arrays
    let sectionsTitlesArray = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    let infoTitleArray = ["العمر", "الجنسية", "المدينة", "الحالة الاإجتماعية"]
    let courcesArray = ["برمجة php", "معهد معد للتقنيات", "المملكة العربية السعودية - الرياض"]
    let qualificationArray = ["مبيعات", "تسويق", "إدارة الموقع الإلكتروني", "إدارة الموقع الإلكتروني"]
    let skillsArray = ["إدارة الفريق", "تحمل الضغط في العمل", "حل المشاكل بفعالية", "إدارة الوقت"]
    let infoArray = ["30 سنة", "السعودية", "الرياض", "إعزب"]
    let languagesArray = ["للغة الأم", "ممتازة", "مبتدئ"]
    let edCertificateArray = ["ثانوي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]
    let edCertificateSecondArray = ["جامعي - تسويق", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية - الرياض"]

    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageBGV.layer.cornerRadius = 0.5 * profileImageBGV.bounds.size.width
        profileImageView.layer.cornerRadius = 0.5 * profileImageBGV.bounds.size.width
    }
    
    // Button Actions
    
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func changeBtnAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
}

// Extention for Tableview delegates and data source
extension ProfileDetailNextVController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 31
            }
        }
        else if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 90
            }
        }
        else if indexPath.section == 2 {
           switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 90
            }
        }
        else if indexPath.section == 3 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 90
            }
        }
        else if indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 31
            }
        }
        else {
            switch indexPath.row {
            case 0:
                return headerCellHight
            default:
                return 31
            }
        }
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return infoArray.count + 1
        }
        else if section == 1 {
            return 3
        }
        else if section == 2 {
            return 2
        }
        else if section == 3 {
            return 5
        }
        else if section == 4 {
            return skillsArray.count + 1
        }
        else {
            return languagesArray.count + 1
        }
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if indexPath.section == 0 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                    cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                    return cell
                default:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "UserDetailInfoTVCell", for: indexPath) as! UserDetailInfoTVCell
                    cell.titleLbl.text = infoTitleArray[indexPath.row - 1]
                    cell.resultLbl.text = infoArray[indexPath.row - 1]
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
                    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomInfoTVCell", for: indexPath) as! CustomInfoTVCell
                    if indexPath.row == 1 {
                        cell.titleLbl.text = edCertificateArray[0]
                        cell.nameLbl.text = edCertificateArray[1]
                        cell.addLbl.text = edCertificateArray[2]
                    }
                    else if indexPath.row == 2 {
                        cell.titleLbl.text = edCertificateSecondArray[0]
                        cell.nameLbl.text = edCertificateSecondArray[1]
                        cell.addLbl.text = edCertificateSecondArray[2]
                    }
                    return cell
                }
            }
        else if indexPath.section == 2 {
            switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                    cell.titileLbl.text = sectionsTitlesArray[indexPath.section + 1]
                    return cell
                default:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomInfoTVCell", for: indexPath) as! CustomInfoTVCell
                    cell.titleLbl.text = courcesArray[0]
                    cell.nameLbl.text = courcesArray[1]
                    cell.addLbl.text = courcesArray[2]
                    return cell
                }
            }
        else if indexPath.section == 3 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                    cell.titileLbl.text = sectionsTitlesArray[indexPath.section - 1]
                    return cell
                default:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomInfoTVCell", for: indexPath) as! CustomInfoTVCell
                    cell.titleLbl.text = qualificationArray[indexPath.row - 1]
                    cell.nameLbl.text = courcesArray[1]
                    cell.addLbl.text = courcesArray[2]
                    return cell
                }
            }
        else if indexPath.section == 4 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                    cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                    return cell
                default:
                    let cell = tableView.dequeueReusableCell(withIdentifier: "SkillDeatilTVCell", for: indexPath) as! SkillDeatilTVCell
                    cell.titleLbl.text = skillsArray[indexPath.row - 1]
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
                    let cell = tableView.dequeueReusableCell(withIdentifier: "LanguagesDeailTVCell", for: indexPath) as! LanguagesDeailTVCell
                    cell.titleLbl.text = languagesArray[indexPath.row - 1]
                    cell.resultLabelLbl.text = languagesArray[indexPath.row - 1]
                    return cell
                }
            }
        }
    }

