//
//  LeerNoticias.swift
//  Actividad_13_SOLY
//
//  Created by user167235 on 5/5/21.
//  Copyright © 2021 user167235. All rights reserved.
//

import Foundation

class LeerNoticias
{
    func getNoticias(termino: @escaping (_ datos:[String])->())
    {
      let liga = "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=FN3XbxmzuzoGcBG1FG5HPlq8w71t9wNV"

      let url = URL(string: liga)!
        URLSession.shared.dataTask(with: url)
        {
            NSData, URLResponse, NSError in
            var titulos:[String] = []

            do
            {
                let resultado = try JSONSerialization.jsonObject(with: NSData!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary

                for valor in resultado["results"] as! [NSDictionary]
                {
                  titulos.append(valor["title"] as! String)

                DispatchQueue.main.async(
                    execute:
                    {() -> Void in
                    termino(titulos)
                    })
                }
            }
            catch
            {
              print("Error en lectura")
            }
        }.resume()
    }
}
