//
//  settingViewController.swift
//  deneme2
//
//  Created by Emir Seçer on 9.09.2023.
//

import UIKit
import Firebase
import FirebaseAuth

class settingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    
   
    @IBAction func cikisyapbutton(_ sender: Any) {
        do  {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "tocıkısvc", sender: nil)
            
            } catch {
                print("hata")
            }
      
        }
        
    }
    

