//
//  ViewController.swift
//  NextGCTask
//
//  Created by syed hammad jan on 22/08/2020.
//  Copyright © 2020 ipkindle pakistan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Top two views for counters
    @IBOutlet weak var addadMowaeidView: UIView!
    @IBOutlet weak var addadMAlmanshaatView: UIView!
    
    let titleArray = ["السيرة الذاتية", "الفيديو التعريفي", "الملف الشخصي", "سجل المواعيدv"]
    let imageArray = ["cvIcon", "handheldIcon",  "user", "documentIcon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addadMowaeidView.layer.borderColor = UIColor(red: 0.63, green: 0.80, blue: 0.27, alpha: 1.00).cgColor
        addadMowaeidView.layer.borderWidth = 1.0
        

        addadMAlmanshaatView.layer.borderColor = UIColor(red: 0.63, green: 0.80, blue: 0.27, alpha: 1.00).cgColor
        addadMAlmanshaatView.layer.borderWidth = 1.0
    }
    
    // Notification Button Click
    @IBAction func notificationBtnActionMethode(_ sender: Any) {
        let notificationVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NotificationVController") as! NotificationVController
            present(notificationVC, animated: false, completion: nil)
    }
}

// Extension for CollectionView delegates and datasource methods
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCViewCell", for: indexPath) as! HomeCViewCell
        
        cell.containerView.layer.borderColor = UIColor(hex: "#A1CB4688")?.cgColor
        cell.containerView.layer.borderWidth = 1.0
        cell.titleLbl.text = titleArray[indexPath.row]
        let imageIcon = UIImage(named:imageArray[indexPath.row])
        cell.customImageView.image = imageIcon
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.frame.width
        let cellSize = CGSize(width: (collectionViewWidth / 2) - 5, height: 102)
        
        return cellSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChildPopUpVController") as! ChildPopUpVController
            present(vc, animated: false, completion: nil)
        }
    }
}

