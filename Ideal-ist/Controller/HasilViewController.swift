//
//  HasilViewController.swift
//  Ideal-ist
//
//  Created by Erlangga Anugrah Arifin on 03/09/22.
//

import UIKit

class HasilViewController: UIViewController {
    
    var nilaiBMI: String?
    var saran: String?
    var warna: UIColor?
    var tipe: String?
    var tautan: String?
    
    @IBOutlet weak var hasilBMI: UILabel!
    @IBOutlet weak var jenisBMI: UILabel!
    @IBOutlet weak var saranLabel: UILabel!
    @IBOutlet weak var saranButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Get warna method: \(warna)")
//        hasilBMI.text = nilaiBMI
//        saranLabel.text = saran
//        jenisBMI.text = tipe
//        print("Warna adalah: ", warna)
//        warnaBelakangHasil.backgroundColor = warna!
        view.backgroundColor = UIColor.red
        print("warna view", self.view.backgroundColor!)
        
        saranButton.setTitle("\(tautan ?? "nill")", for: .normal)
        
        if Double(nilaiBMI!)! <= 18.9 || Double(nilaiBMI!)! >= 25  && Double(nilaiBMI!)! <= 39.9 {
            
        } else if Double(nilaiBMI!)! <= 24.9 && Double(nilaiBMI!)! >= 19{
            // Kondisi ideal
            saranButton.isHidden = true
        } else if Double(nilaiBMI!)! >= 40 {
                
        }
        
    }
    
    @IBAction func kembaliSegue(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
