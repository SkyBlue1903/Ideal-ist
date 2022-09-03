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
    var tautan: String?
    
    @IBOutlet var warnaBelakangHasil: UIView!
    @IBOutlet weak var hasilBMI: UILabel!
    @IBOutlet weak var jenisBMI: UILabel!
    @IBOutlet weak var saranLabel: UILabel!
    @IBOutlet weak var saranButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hasilBMI.text = nilaiBMI
        saranLabel.text = saran
        print("Warna adalah: ", warna)
        warnaBelakangHasil.backgroundColor = warna!
        
        saranButton.setTitle("\(tautan ?? "nill")", for: .normal)
        
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
