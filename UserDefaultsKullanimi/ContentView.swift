//
//  ContentView.swift
//  UserDefaultsKullanimi
//
//  Created by Mert Baykal on 11/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Text(" ")
            .onAppear(){
                
                // Kayit
                let ud = UserDefaults.standard
                ud.setValue("hello", forKey: "hi")
                ud.setValue("mert", forKey: "name")
                ud.setValue( 22, forKey: "age")
                ud.setValue(false, forKey: "evli")
                
                let liste = ["berk", "gamze", "katya"]
                ud.setValue(liste, forKey: "liste")
                
                let cities = ["istanbul": "34", "bursa": "16"]
                ud.setValue(cities, forKey: "cities")
                
                // silme
                ud.removeObject(forKey: "hi")
                
                //veri cekme
                let gelenHi = ud.string(forKey: "hi")
                let gelenName = ud.string(forKey: "name")
                let gelenage = ud.integer(forKey: "age")
                let gelenEvli = ud.bool(forKey: "evli")
                
                print("gelen ad \( gelenHi)")
                print("gelen ad \( gelenName)")
                print("gelen ad \( gelenage)")
                print("gelen ad \( gelenEvli)")
                
                let gelenListe = ud.array(forKey: "liste") ?? [String]()
                
                for a in gelenListe {
                    print("names: \(a)")
                }
                
                let gelenCities = ud.dictionary(forKey: "cities") ?? [String:String]()
                
                for (kelime,anahtar) in gelenCities {
                    print("sehit: \(kelime) Anahtar: \(anahtar)")
                }

            }
    }
}

#Preview {
    ContentView()
}
