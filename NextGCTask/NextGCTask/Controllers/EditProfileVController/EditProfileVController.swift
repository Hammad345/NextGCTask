//
//  EditProfileVController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 23/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class EditProfileVController: UIViewController {
    let headerCellHight: CGFloat = 35

    let arrowImage = UIImage(named: "dropdownIcon")
    let calanderIcon = UIImage(named: "calanderIcon")
    
    @IBOutlet weak var profileImageBGView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    let sectionsTitlesArray = ["المعلومات الشخصية", "الشهادات التعليمية", "الخبرات الوظيفية", "الدورات", "المهارات", "اللغات"]
    let personalInfoArray = ["الاسم", "الوظيفة", "المدينة", "الديانة", "الجنسية", "تاريخ الميلاد", "الحالة الاإجتماعية"]
    let educationtitleArray = ["الشهادة", "التخصص", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    let contentArray = ["جامعي", "جامعة الملك عبدالعزيز", "المملكة العربية السعودية", "الرياض", "2/01/2019", "7/05/2017"]
    let educationSecondtitleArray = ["الشهادة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    let qualificationTitlesArray = ["الوظيفة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    let coursesTitleArray = ["أسم الدورة", "الجهة", "الدولة", "المدينة", "تاريخ البداية", "تاريخ التخرج"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileImageBGView.layer.cornerRadius = 0.5 * profileImageBGView.bounds.size.width
        profileImageView.layer.cornerRadius = 0.5 * profileImageBGView.bounds.size.width
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBtnAction(_ sender: Any) {
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileDetailNextVController") as! ProfileDetailNextVController
         present(vc, animated: false, completion: nil)
    }
}


// Extention for Tableview delegates and data source
extension EditProfileVController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            case 1:
                return 365
            case 2:
                return 308
            default:
                return 365
            }
        }
        else if indexPath.section == 5 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            case 1:
                return 235
            default:
                return 365
            }
        }
        else if indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            case 1:
                return 195
            default:
                return 365
            }
        }
        else if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                return headerCellHight
            case 1:
                return 365
            case 2:
                return 365
            default:
                return 365
            }
        }
        else {
            switch indexPath.row {
            case 0:
                return headerCellHight
            case 1:
                return 310
            default:
                return 365
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 1:
            return 3
        default:
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0 {
            return UIView()
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FooterCell") as! FooterCell
            cell.bgView.layer.borderColor = UIColor(red: 0.21, green: 0.56, blue: 0.36, alpha: 1.00).cgColor
            cell.bgView.layer.borderWidth = 1
            return cell.contentView
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        else if section == 4 {
            return 54
        }
        else {
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 4 {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "SkillTVCell", for: indexPath) as! SkillTVCell
                return cell
            }
        }
        else if indexPath.section == 5 {
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
        else {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "HeadingTVCell", for: indexPath) as! HeadingTVCell
                cell.titileLbl.text = sectionsTitlesArray[indexPath.section]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "InfoDetailTVCell", for: indexPath) as! InfoDetailTVCell
                if indexPath.section == 0 {
                    cell.seperatorView.isHidden = true
                    cell.secondContainerView.isHidden = false
                    cell.firstLbl.text = "خالد عبدالعزيز القبيلي"
                    cell.secondLbl.text = "مصمم UI-UX"
                    cell.thirdLbl.text = "الرياض"
                    cell.forthLbl.text = "مسلم"
                    cell.fifthLbl.text = "سعودي"
                    cell.sixthLbl.text = "2/06/1990"
                    cell.seventhLbl.text = "إعزب"
                    cell.firstBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(arrowImage, for: .normal)
                    cell.sixthBtn.setImage(arrowImage, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    cell.firstTitleLbl.text = personalInfoArray[0]
                    cell.secondTitleLbl.text = personalInfoArray[1]
                    cell.thirdTitleLbl.text = personalInfoArray[2]
                    cell.forthTitleLbl.text = personalInfoArray[3]
                    cell.fifthTitleLbl.text = personalInfoArray[4]
                    cell.sixthTitleLbl.text = personalInfoArray[5]
                    cell.seventhTitleLbl.text = personalInfoArray[6]
                }
                else if indexPath.section == 1 {
                    cell.firstBtn.setImage(arrowImage, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    if indexPath.row == 2 {
                        cell.secondContainerView.isHidden = false
                        
                        cell.firstTitleLbl.text = educationSecondtitleArray[0]
                        cell.thirdTitleLbl.text = educationSecondtitleArray[1]
                        cell.forthTitleLbl.text = educationSecondtitleArray[2]
                        cell.fifthTitleLbl.text = educationSecondtitleArray[3]
                        cell.sixthTitleLbl.text = educationSecondtitleArray[4]
                        cell.seventhTitleLbl.text = educationSecondtitleArray[5]
                        cell.firstLbl.text = contentArray[0]
                        cell.thirdLbl.text = ""
                        cell.forthLbl.text = ""
                        cell.fifthLbl.text = ""
                        cell.sixthLbl.text = ""
                        cell.seventhLbl.text = ""
                    }
                    else {
                        cell.secondContainerView.isHidden = false
                        cell.firstTitleLbl.text = educationtitleArray[0]
                        cell.secondTitleLbl.text = educationtitleArray[1]
                        cell.thirdTitleLbl.text = educationtitleArray[2]
                        cell.forthTitleLbl.text = educationtitleArray[2]
                        cell.fifthTitleLbl.text = educationtitleArray[4]
                        cell.sixthTitleLbl.text = educationtitleArray[5]
                        cell.seventhTitleLbl.text = educationtitleArray[6]
                        cell.firstLbl.text = contentArray[0]
                        cell.thirdLbl.text = contentArray[1]
                        cell.forthLbl.text = contentArray[2]
                        cell.fifthLbl.text = contentArray[3]
                        cell.sixthLbl.text = contentArray[4]
                        cell.seventhLbl.text = contentArray[5]
                        cell.secondLbl.text = ""
                    }
                }
                else if indexPath.section == 2 {
                    cell.firstBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    cell.secondContainerView.isHidden = true
                    cell.firstTitleLbl.text = qualificationTitlesArray[0]
                    cell.thirdTitleLbl.text = qualificationTitlesArray[1]
                    cell.forthTitleLbl.text = qualificationTitlesArray[2]
                    cell.fifthTitleLbl.text = qualificationTitlesArray[3]
                    cell.sixthTitleLbl.text = qualificationTitlesArray[4]
                    cell.seventhTitleLbl.text = qualificationTitlesArray[5]
                    cell.forthLbl.text = contentArray[2]
                    cell.fifthLbl.text = contentArray[3]
                    cell.sixthLbl.text = contentArray[4]
                    cell.seventhLbl.text = contentArray[5]
                    cell.firstLbl.text = ""
                    cell.thirdLbl.text = ""
                }
                else if indexPath.section == 3 {
                    cell.secondContainerView.isHidden = true
                    cell.firstBtn.setImage(nil, for: .normal)
                    cell.seventhBtn.setImage(calanderIcon, for: .normal)
                    cell.sixthBtn.setImage(calanderIcon, for: .normal)
                    cell.fifthBtn.setImage(arrowImage, for: .normal)
                    cell.forthBtn.setImage(arrowImage, for: .normal)
                    cell.firstTitleLbl.text = coursesTitleArray[0]
                    cell.thirdTitleLbl.text = coursesTitleArray[1]
                    cell.forthTitleLbl.text = coursesTitleArray[2]
                    cell.fifthTitleLbl.text = coursesTitleArray[3]
                    cell.sixthTitleLbl.text = coursesTitleArray[4]
                    cell.seventhTitleLbl.text = coursesTitleArray[5]
                    cell.forthLbl.text = contentArray[2]
                    cell.fifthLbl.text = contentArray[3]
                    cell.sixthLbl.text = contentArray[4]
                    cell.seventhLbl.text = contentArray[5]
                    cell.firstLbl.text = ""
                    cell.thirdLbl.text = ""
                }
                return cell
            }
        }
    }
}


