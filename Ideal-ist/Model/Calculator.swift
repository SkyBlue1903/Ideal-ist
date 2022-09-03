//
//  Calculator.swift
//  Ideal-ist
//
//  Created by Erlangga Anugrah Arifin on 02/09/22.
//

import UIKit

struct Calculator {
    var bmi: BMI?
    
    func getNilai() -> String {
        let nilaiDalamString  = String(format: "%.1f", bmi?.nilai ?? 0.0)
        return nilaiDalamString
    }
    
    func getSaran() -> String {
        return bmi?.saran ?? ""
    }
    
    func getWarna() -> UIColor {
        return bmi?.warna ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getTautan() -> String {
        return bmi?.link ?? "https://www.halodoc.com/artikel"
    }
    
    mutating func hitungBMI(_ tinggi: Float, _ berat: Float) {
        print("Raw value, tinggi: \(tinggi) cm, berat: \(berat) kg")
        let nilaiBMI = berat / ((tinggi * tinggi)/10000)
        print("Raw value BMI: \(nilaiBMI)")
        
        
        if nilaiBMI <= 18.9 {
            bmi = BMI(nilai: nilaiBMI, saran: "Makan yang banyak ya!", link: "https://www.halodoc.com/artikel/search/meningkatkan%20berat%20badan", tipe: "Kekurangan berat badan", warna: #colorLiteral(red: 0.96862763, green: 0.75393707, blue: 0.27450982, alpha: 1.0))
        } else if nilaiBMI <= 24.9 {
            bmi = BMI(nilai: nilaiBMI, saran: "Berat anda ideal 🤩", link: "null", tipe: "Berat badan ideal", warna: #colorLiteral(red: 0.24409443, green: 0.8267718, blue: 0.7736222, alpha: 0.8444882))
        } else if nilaiBMI <= 29.9 {
            bmi = BMI(nilai: nilaiBMI, saran: "Yuk kurangi berat badannya", link:"https://www.halodoc.com/artikel/search/menurunkan%20berat%20badan", tipe: "Berat badan berlebih", warna: #colorLiteral(red: 0.3838583, green: 0.54921263, blue: 0.66929144, alpha: 1.0))
        } else if nilaiBMI <= 39.9 {
            bmi = BMI(nilai: nilaiBMI, saran: "Harus diet ya, bahaya kesehatan! 😱", link: "https://www.halodoc.com/artikel/search/obesitas", tipe: "Obesitas", warna: #colorLiteral(red: 0.7677166, green: 4.371426e-07, blue: 0.48818898, alpha: 0.9232283))
        } else if nilaiBMI >= 40 {
                bmi = BMI(nilai: nilaiBMI, saran: "Berat anda sangat berbahaya!🤯", link: "https://www.google.com/maps/search/rumah+sakit+terdekat/", tipe: "Obesitas akut", warna: #colorLiteral(red: 0.7677166, green: 4.371426e-07, blue: 0.48818898, alpha: 0.9232283))
        }
        
        printRawValues()
    }
    
    func printRawValues() {
        print("Hasil value pada variabel BMI adalah: ", bmi ?? "Data masi kosong")
    }
}
