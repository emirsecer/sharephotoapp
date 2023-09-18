//
//  ViewController.swift
//  deneme2
//
//  Created by Emir Seçer on 9.09.2023.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore
import FirebaseStorage

class ViewController: UIViewController {
    @IBOutlet weak var eposta: UITextField!
    
    @IBOutlet weak var parola: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func kayolbutton(_ sender: Any) {
        Auth.auth().createUser(withEmail: eposta.text ?? "hata aldınız.", password: parola.text ?? "hata aldınız") { authResult, error in
            if error != nil {
                self.hataMesaji(titleInput: "HATA", messageInput: error?.localizedDescription ?? "hata aldınız.")
            } else {
                self.performSegue(withIdentifier: "tofeedvc", sender: nil)
            }
         
        }
        
    }
    
    
    @IBAction func girisyapbutton(_ sender: Any) {
        Auth.auth().signIn(withEmail: eposta.text ?? "hata aldınız", password: parola.text ?? "hata aldınız") { [weak self] authResult, error in
            if error !=  nil {
                self?.hataMesaji(titleInput: "hata", messageInput: error?.localizedDescription ?? "hata aldınız")
              
            }else {
                self?.performSegue(withIdentifier: "tofeedvc", sender: nil)
            }
         
       
        }
    }
    
    func hataMesaji(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}



