//
//  ViewController.swift
//  Ideal-ist
//
//  Created by Erlangga Anugrah Arifin on 01/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tinggiLabel: UILabel!
    @IBOutlet weak var tinggiSlider: UISlider!
    @IBOutlet weak var beratLabel: UILabel!
    @IBOutlet weak var beratSlider: UISlider!
    var penghitung = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tinggiLabel.text = "\(tinggiSlider.value) cm"
        beratLabel.text = "\(beratSlider.value) kg"
    }
    
    @IBAction func tinggiDigeser(_ sender: UISlider) {
        tinggiLabel.text = "\(String(format: "%.0f", sender.value)) cm"
    }
    
    @IBAction func beratDigeser(_ sender: UISlider) {
        beratLabel.text = "\(String(format: "%.1f", sender.value)) kg"
    }
    
    @IBAction func tombolDitekan(_ sender: UIButton) {
        let tinggiAsli = tinggiSlider.value
        let beratAsli  = beratSlider.value
        
        penghitung.hitungBMI(tinggiAsli, beratAsli)
        
        performSegue(withIdentifier: "hasilViewController", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Segue identifier ada ketika menekan arah panah di Main.storyboard
        if segue.identifier == "hasilViewController" {
            let hasilVC = segue.destination as! HasilViewController
            hasilVC.nilaiBMI = penghitung.getNilai()
            hasilVC.saran = penghitung.getSaran()
            hasilVC.warna = penghitung.getWarna()
            hasilVC.tautan = penghitung.getTautan()
            hasilVC.tipe = penghitung.getTipe()
        }
    }
    
}

