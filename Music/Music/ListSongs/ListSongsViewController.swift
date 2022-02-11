//
//  ListSongsViewController.swift
//  Music
//
//  Created by Omar on 22/12/21.
//  Copyright © 2021 Omar. All rights reserved.
//

import UIKit

class ListSongsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //MARK: -Outlets
    
    @IBOutlet weak var table: UITableView!
    
    //Mark: -Variables
    
    private var arraySongs: [String] = ["El pasado esta olvidado", "Hawai", "Unica testigo", "In da getto", "Beggin", "Livin on a prayer","Cradles"]
    
    private var tempInfo: String = ""
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1-Conectar la tabla con el controlador
        //2- Configurar los protocolos de una table view (Data Source y Delegate)
        //3- Llenar de datos la tabla
        //4- Detectar la celda seleccionada y obtener la informacion del elemento (Cancion)
        //5- Transferir la informacion a pantalla de detalles y mostrr dicha pantalla
        
        configureTableView()
    }
    
    //MARK: -Functions
    
    private func configureTableView() {
        //Quien va a ser la fuente de datos = Este controlador
        table.dataSource = self
        
        //Quien va a gestionar las acciones detonadas por la tabla == Este controlador
        table.delegate = self
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as? DetailSongViewController
        controller?.titleSong = tempInfo
    }
    
    // MARK: - Table View Data Source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arraySongs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = arraySongs[indexPath.row]
        return cell
    }
    
    //MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("-> \(arraySongs[indexPath.row])")
        
        //preparamos la informacion a transferir
        tempInfo = arraySongs[indexPath.row]
        
        performSegue(withIdentifier: "DetailSongSegueIdentifier", sender: self) //con esto le decimos que muestre el siguiente controlador o pantalla con el identificador "DetailSongSegueIdentifier"
        
        
    }

}
