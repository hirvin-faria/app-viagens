//
//  ViewController.swift
//  app viagens
//
//  Created by HirvinFaria on 01/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabelaViagens: UITableView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.tabelaViagens.delegate = self
        
        // Set borda arredondada da view
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
    }
    
    // Implementação dos Protocolos de ViewTable
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let viagemAtual = listaViagens[indexPath.row]
        
        cell.labelTitulo.text = viagemAtual.title
        cell.labelQuantidadeDias.text = "\(viagemAtual.quantidadeDeDias) Dias"
        cell.labelPreco.text = "R$ \(viagemAtual.preco)"
        cell.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        cell.imagemViagem.layer.cornerRadius = 10
        cell.imagemViagem.layer.masksToBounds = true
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Verifica o tipo de dispisitivo para retornar a altura da celula
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 175 : 260
    }


}

