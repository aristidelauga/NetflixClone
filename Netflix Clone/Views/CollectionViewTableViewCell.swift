//
//  CollectionViewTableViewCell.swift
//  Netflix Clone
//
//  Created by Aristide LAUGA on 10/08/2022.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
  
  static let identifier = "CollectionViewTableViewCell"
  
  private let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    return collectionView
  }()
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  required init?(coder: NSCoder) {
    fatalError()
  }
}
