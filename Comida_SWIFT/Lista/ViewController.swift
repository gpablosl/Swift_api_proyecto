//
//  ViewController.swift
//  Lista
//
//  Created by Alumno ULSA on 24/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Cantidad de subtitulos
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Define altura
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    //Cantidad de peliculas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaComida") as! CeldaComidaController
        celda.lblNombre.text = comidas[indexPath.row].nombre
        celda.lblCosto.text = comidas[indexPath.row].costo
        celda.lblTipo.text = comidas[indexPath.row].tipo
        
        let url = URL(string: "http://127.0.0.1:8000/storage/fotos/" + comidas[indexPath.row].imagen)!
                var solicitud = URLRequest(url: url)
                
                solicitud.httpMethod = "GET"
                let task = URLSession.shared.dataTask(with: solicitud) {
                    data, response, error in
                    if let data = data {
                        celda.imgComida.image = UIImage(data: data)
                    }
                }
                task.resume()
        
        return celda
    }
    @IBOutlet weak var tvComida: UITableView!
    
    
    //Llamamos al modelo
    var comidas : [Comida] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesComidaController
        destino.comida = comidas[tvComida.indexPathForSelectedRow!.row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string:
                        "http://localhost:8000/api/comida")!
        
        var solicitud = URLRequest(url:url)
        
        solicitud.setValue("application/json", forHTTPHeaderField: "Content-Type")
        solicitud.setValue("application/json", forHTTPHeaderField: "Accept")
        solicitud.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: solicitud){
            data, response, error in
            if let data = data {
                if let comidas = try? JSONDecoder().decode([Comida].self, from: data) {
                    self.comidas = comidas
                    DispatchQueue.global(qos: .background).async {
                        DispatchQueue.main.async {
                            self.tvComida.reloadData()
                        }
                    }
                    
                    self.tvComida.reloadData()
                }
            }
        }
        task.resume()
    }
}
