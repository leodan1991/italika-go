//
//  LoginVC.swift
//  ItalikaGo
//
//  Created by DeveloperDM on 8/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var viewGral: UIView!
    
    @IBOutlet weak var tfUsuario: UITextField!
    @IBOutlet weak var tfContrasena: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
 
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    @IBAction func pressButtonIngresar(_ sender: UIButton) {
        
        guard let usuario = tfUsuario.text, usuario.trim() != "" else {
            showMensajeError()
            return
        }
        
        guard let contraseña = tfContrasena.text, contraseña.trim() != "" else {
            showMensajeError()
            return
        }
        
        
        DispatchQueue.main.async {
            
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "formularioInicio") as? FormularioInicioVC{
                 self.navigationController?.pushViewController(vc, animated: true)
            }
            
          
            
        }
        
    }
    
    func showMensajeError(){
        
       
        
        let alert = UIAlertController(title: "Aviso", message: "Recuerda que para acceder necesitas ingresar tu usuario y contraseña", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
        
    }
    
  

}


extension String
{
    func trim() -> String
    {
        //return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
