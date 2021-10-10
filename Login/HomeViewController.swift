//
//  HomeViewCntrollerViewController.swift
//  Login
//  Created by AUSTINE on 09/10/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var searching = false
    
    private var sectionInsets = UIEdgeInsets(top: 20,left: 10,bottom: 20,right: 10)
    private var itemPerRow:CGFloat = 4

    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
            title = "Shop"
    
            
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        configureSearch()
    }
    
    
    func configureSearch(){
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.searchTextField.backgroundColor = UIColor.white

        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.searchBar.placeholder = "Search By Name"

    }
}


extension HomeViewController :UICollectionViewDelegate,UICollectionViewDataSource, UISearchBarDelegate,UISearchResultsUpdating,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding = sectionInsets.left * (itemPerRow + 1)
        let availableWidth = view.frame.width - padding
        let withPerItem = availableWidth / itemPerRow
        return CGSize(width: withPerItem, height: withPerItem)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return sectionInsets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell

        return cell
    }
    
    
 
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
    
}


