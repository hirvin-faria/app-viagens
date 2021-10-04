//
//  Viagem.swift
//  app viagens
//
//  Created by HirvinFaria on 01/12/20.
//

import UIKit

class Viagem: NSObject {
    let title: String
    let quantidadeDeDias: Int
    let preco: String
    let caminhoDaImagem: String
    
    init(titulo: String, quantidadeDeDias: Int, preco: String, caminhoDaImagem: String) {
        self.title = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }
}
