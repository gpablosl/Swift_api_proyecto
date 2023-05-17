//
//  DetallesComidaController.swift
//  Lista
//
//  Created by Alumno ULSA on 10/05/23.
//

import Foundation
import UIKit

class DetallesComidaController : UIViewController {

    
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var lblCosto: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblSaludable: UILabel!
    @IBOutlet weak var lblRapida: UILabel!
    @IBOutlet weak var imgComida: UIImageView!
    
    var comida : Comida?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        if comida != nil{
            self.title = comida?.nombre
            lblTipo.text = comida!.tipo
            lblCosto.text = comida!.costo
            lblPais.text = comida!.pais
            lblSaludable.text = comida!.saludable
            lblRapida.text = comida!.rapida

            let url = URL(string: "http://127.0.0.1:8000/storage/fotos/" + comida!.imagen)!
                    var solicitud = URLRequest(url: url)
                    
                    solicitud.httpMethod = "GET"
                    let task = URLSession.shared.dataTask(with: solicitud) {
                        data, response, error in
                        if let data = data {
                            self.imgComida.image = UIImage(data: data)
                    }
                }
            task.resume()
        }else{
            self.title = "Detalles de Comida"
        }
        
    }
    
}
