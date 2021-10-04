//
//  PacotesViagensViewController.swift
//  app viagens
//
//  Created by HirvinFaria on 01/12/20.
//

import UIKit

class PacotesViagensViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionPacotesViagem: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionPacotesViagem.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    // MARK: - CollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celularPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PacotesViagemCollectionViewCell
        
        celularPacote.backgroundColor = UIColor.green
        
        return celularPacote
    }
    
}
